
require 'rails_helper'


RSpec.describe 'POST /api/v1/users' do
  it 'returns news in response body' do
    
    user = create(:user, email: 'whatever@example.com', password: "password" )
    post "/api/v1/sessions?email=#{user.email}&password=#{user.password}"

    params = {name: "Atl"}
    get "/api/v1/news?name=#{params[:name]}"
    
    results = JSON.parse(response.body, symbolize_names: true)
    expect(results).to have_key(:data)
    expect(results[:data]).to have_key(:attributes)
    expect(results[:data][:attributes]).to have_key(:news_feed)
    expect(results[:data][:attributes][:news_feed]).to have_key(:title)
    expect(results[:data][:attributes][:news_feed]).to have_key(:content)
  end
end