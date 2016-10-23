require 'test_helper'

class PreDemonstrationsControllerTest < ActionController::TestCase
  setup do
    @pre_demonstration = pre_demonstrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_demonstrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_demonstration" do
    assert_difference('PreDemonstration.count') do
      post :create, pre_demonstration: { condition: @pre_demonstration.condition, crop_growth: @pre_demonstration.crop_growth, crop_id: @pre_demonstration.crop_id, demo_code: @pre_demonstration.demo_code, fa_activity: @pre_demonstration.fa_activity, farmer_id: @pre_demonstration.farmer_id }
    end

    assert_redirected_to pre_demonstration_path(assigns(:pre_demonstration))
  end

  test "should show pre_demonstration" do
    get :show, id: @pre_demonstration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_demonstration
    assert_response :success
  end

  test "should update pre_demonstration" do
    patch :update, id: @pre_demonstration, pre_demonstration: { condition: @pre_demonstration.condition, crop_growth: @pre_demonstration.crop_growth, crop_id: @pre_demonstration.crop_id, demo_code: @pre_demonstration.demo_code, fa_activity: @pre_demonstration.fa_activity, farmer_id: @pre_demonstration.farmer_id }
    assert_redirected_to pre_demonstration_path(assigns(:pre_demonstration))
  end

  test "should destroy pre_demonstration" do
    assert_difference('PreDemonstration.count', -1) do
      delete :destroy, id: @pre_demonstration
    end

    assert_redirected_to pre_demonstrations_path
  end
end
