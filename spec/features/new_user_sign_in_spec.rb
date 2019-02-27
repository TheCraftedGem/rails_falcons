require 'rails_helper'

describe 'user registration' do

  it 'anonymous visitor registers and sees pop up' do
    visit '/'
    click_on 'Register!' 

    expect(current_path).to eq(new_user_path)
    
    fill_in :user_email, with: "isaac@email.com"
    fill_in :user_password, with: 'test1234'

    click_on 'Create User'
  

    expect(current_path).to eq(user_path(User.last))

    fill_in :name, with: "Atl"

    click_on "submit"
    expect(page).to have_content(User.last.email)
  end
end