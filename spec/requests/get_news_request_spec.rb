
require 'rails_helper'


RSpec.describe 'POST /api/v1/users' do
  it 'returns news in response body' do

    get "/api/v1/news"

    expect(response).to be_successful
    
    results = JSON.parse(response.body, symbolize_names: true)
    expect(results).to have_key(:data)
  end
end