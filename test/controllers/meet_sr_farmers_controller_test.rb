require 'test_helper'

class MeetSrFarmersControllerTest < ActionController::TestCase
  setup do
    @meet_sr_farmer = meet_sr_farmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meet_sr_farmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet_sr_farmer" do
    assert_difference('MeetSrFarmer.count') do
      post :create, meet_sr_farmer: { crop_condition: @meet_sr_farmer.crop_condition, crop_growth: @meet_sr_farmer.crop_growth, crop_id: @meet_sr_farmer.crop_id, farmer_id: @meet_sr_farmer.farmer_id, purpose: @meet_sr_farmer.purpose, recommendation: @meet_sr_farmer.recommendation, sr_activity_id: @meet_sr_farmer.sr_activity_id }
    end

    assert_redirected_to meet_sr_farmer_path(assigns(:meet_sr_farmer))
  end

  test "should show meet_sr_farmer" do
    get :show, id: @meet_sr_farmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet_sr_farmer
    assert_response :success
  end

  test "should update meet_sr_farmer" do
    patch :update, id: @meet_sr_farmer, meet_sr_farmer: { crop_condition: @meet_sr_farmer.crop_condition, crop_growth: @meet_sr_farmer.crop_growth, crop_id: @meet_sr_farmer.crop_id, farmer_id: @meet_sr_farmer.farmer_id, purpose: @meet_sr_farmer.purpose, recommendation: @meet_sr_farmer.recommendation, sr_activity_id: @meet_sr_farmer.sr_activity_id }
    assert_redirected_to meet_sr_farmer_path(assigns(:meet_sr_farmer))
  end

  test "should destroy meet_sr_farmer" do
    assert_difference('MeetSrFarmer.count', -1) do
      delete :destroy, id: @meet_sr_farmer
    end

    assert_redirected_to meet_sr_farmers_path
  end
end
