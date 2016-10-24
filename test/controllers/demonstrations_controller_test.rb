require 'test_helper'

class DemonstrationsControllerTest < ActionController::TestCase
  setup do
    @demonstration = demonstrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demonstrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demonstration" do
    assert_difference('Demonstration.count') do
      post :create, demonstration: { appdone_by: @demonstration.appdone_by, demo_status: @demonstration.demo_status, fa_activity_id: @demonstration.fa_activity_id, pre_demonstration_id: @demonstration.pre_demonstration_id }
    end

    assert_redirected_to demonstration_path(assigns(:demonstration))
  end

  test "should show demonstration" do
    get :show, id: @demonstration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demonstration
    assert_response :success
  end

  test "should update demonstration" do
    patch :update, id: @demonstration, demonstration: { appdone_by: @demonstration.appdone_by, demo_status: @demonstration.demo_status, fa_activity_id: @demonstration.fa_activity_id, pre_demonstration_id: @demonstration.pre_demonstration_id }
    assert_redirected_to demonstration_path(assigns(:demonstration))
  end

  test "should destroy demonstration" do
    assert_difference('Demonstration.count', -1) do
      delete :destroy, id: @demonstration
    end

    assert_redirected_to demonstrations_path
  end
end
