require 'rails_helper'

RSpec.describe 'POST /api/v1/favorites' do
  it 'returing user gets team in response' do

    user = create(:user, email: 'whatever@example.com', password: "password")
    params = {email: 'whatever@example.com', password: 'password'}

    post "/api/v1/users?email=#{params[:email]}&password=#{params[:password]}"
    params = {name: "Atl"}
    post "/api/v1/favorites/#{user.id}?name=#{params[:name]}"

    expect(response).to be_successful
    
    results = JSON.parse(response.body, symbolize_names: true)
    expect(results).to have_key(:data)

    expect(results[:data]).to have_key(:attributes)
    expect(results[:data][:attributes]).to have_key(:name)
    expect(results[:data][:attributes][:name]).to eq(user.favorites.last.name)
  end
end