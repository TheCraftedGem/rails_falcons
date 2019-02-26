require "rails_helper"
RSpec.describe User, type: :model do
  describe User, type: :model do
    describe "validations" do
      it {should validate_uniqueness_of(:email) }
      it {should validate_presence_of(:password)}
    end
  end

  describe User, type: :model do
    describe 'Relationship' do
      it {should have_many(:user_favorites)}
      it {should have_many(:favorites).through(:user_favorites)}
    end
  end

end