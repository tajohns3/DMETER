require 'test_helper'

class DealerPropsControllerTest < ActionController::TestCase
  setup do
    @dealer_prop = dealer_props(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_props)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_prop" do
    assert_difference('DealerProp.count') do
      post :create, dealer_prop: { dealer_id: @dealer_prop.dealer_id, proprietor_id: @dealer_prop.proprietor_id }
    end

    assert_redirected_to dealer_prop_path(assigns(:dealer_prop))
  end

  test "should show dealer_prop" do
    get :show, id: @dealer_prop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer_prop
    assert_response :success
  end

  test "should update dealer_prop" do
    patch :update, id: @dealer_prop, dealer_prop: { dealer_id: @dealer_prop.dealer_id, proprietor_id: @dealer_prop.proprietor_id }
    assert_redirected_to dealer_prop_path(assigns(:dealer_prop))
  end

  test "should destroy dealer_prop" do
    assert_difference('DealerProp.count', -1) do
      delete :destroy, id: @dealer_prop
    end

    assert_redirected_to dealer_props_path
  end
end
