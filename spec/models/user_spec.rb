require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create email: 'test@test.com', password: 'password', password_confirmation: 'password', first_name: 'Shawn', last_name: 'Kearney'
  end

  describe 'creation' do
    it 'can be created' do
      expect(@user).to be_valid
    end

    it 'cannot be created without first_name and last_name' do
      @user.first_name  = ''
      @user.last_name   = ''

      expect(@user).to_not be_valid
    end
  end

  describe 'custom name methods' do
    it 'has a full name method that combines first and last names' do
      expect(@user.full_name).to eq('KEARNEY, SHAWN')
    end
  end
end
