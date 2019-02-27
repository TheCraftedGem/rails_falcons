    
require 'rails_helper'

RSpec.describe 'POST /api/v1/users' do
  it 'creates a new useruser ' do

    params = {email: 'whatever@example.com', password: 'password'}

    post "/api/v1/users?email=#{params[:email]}&password=#{params[:password]}"

    expect(response).to be_successful

    results = JSON.parse(response.body, symbolize_names: true)
    expect(results[:data]).to have_key(:type)
    expect(results[:data][:attributes]).to have_key(:favorites)
    expect(User.all.count).to eq(1)
  end
end