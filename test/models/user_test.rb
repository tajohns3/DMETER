require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'Check username should be first name last a number' do
    @user = User.new(first_name: 'xplit', sur_name: 'ear', email: 'example@rails.com', password: 'nogibingo', password_confirmation: 'nogibingo')
    @user.auto_username
    assert_equal('xear0',@user.user_name )
  end
end
