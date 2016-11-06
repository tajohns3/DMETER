require 'test_helper'

class DealerSecuritiesControllerTest < ActionController::TestCase
  setup do
    @dealer_security = dealer_securities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_securities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_security" do
    assert_difference('DealerSecurity.count') do
      post :create, dealer_security: { dealer_id: @dealer_security.dealer_id, security_check_id: @dealer_security.security_check_id }
    end

    assert_redirected_to dealer_security_path(assigns(:dealer_security))
  end

  test "should show dealer_security" do
    get :show, id: @dealer_security
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer_security
    assert_response :success
  end

  test "should update dealer_security" do
    patch :update, id: @dealer_security, dealer_security: { dealer_id: @dealer_security.dealer_id, security_check_id: @dealer_security.security_check_id }
    assert_redirected_to dealer_security_path(assigns(:dealer_security))
  end

  test "should destroy dealer_security" do
    assert_difference('DealerSecurity.count', -1) do
      delete :destroy, id: @dealer_security
    end

    assert_redirected_to dealer_securities_path
  end
end
