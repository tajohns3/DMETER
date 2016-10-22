require 'test_helper'

class FaTargetsControllerTest < ActionController::TestCase
  setup do
    @fa_target = fa_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fa_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fa_target" do
    assert_difference('FaTarget.count') do
      post :create, fa_target: { demo_number: @fa_target.demo_number, end_date: @fa_target.end_date, farmer_number: @fa_target.farmer_number, field_assistant_id: @fa_target.field_assistant_id, prescription_number: @fa_target.prescription_number, sample_number: @fa_target.sample_number, start_date: @fa_target.start_date, target_id: @fa_target.target_id, total_month: @fa_target.total_month, village_number: @fa_target.village_number }
    end

    assert_redirected_to fa_target_path(assigns(:fa_target))
  end

  test "should show fa_target" do
    get :show, id: @fa_target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fa_target
    assert_response :success
  end

  test "should update fa_target" do
    patch :update, id: @fa_target, fa_target: { demo_number: @fa_target.demo_number, end_date: @fa_target.end_date, farmer_number: @fa_target.farmer_number, field_assistant_id: @fa_target.field_assistant_id, prescription_number: @fa_target.prescription_number, sample_number: @fa_target.sample_number, start_date: @fa_target.start_date, target_id: @fa_target.target_id, total_month: @fa_target.total_month, village_number: @fa_target.village_number }
    assert_redirected_to fa_target_path(assigns(:fa_target))
  end

  test "should destroy fa_target" do
    assert_difference('FaTarget.count', -1) do
      delete :destroy, id: @fa_target
    end

    assert_redirected_to fa_targets_path
  end
end
