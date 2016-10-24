require 'test_helper'

class DemoDateControllerTest < ActionController::TestCase
  test "should get populate_dates" do
    get :populate_dates
    assert_response :success
  end

end
