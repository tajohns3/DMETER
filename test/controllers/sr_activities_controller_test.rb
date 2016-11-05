require 'test_helper'

class SrActivitiesControllerTest < ActionController::TestCase
  setup do
    @sr_activity = sr_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sr_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sr_activity" do
    assert_difference('SrActivity.count') do
      post :create, sr_activity: { business_development_id: @sr_activity.business_development_id, cf_option: @sr_activity.cf_option, crop_growth_stage: @sr_activity.crop_growth_stage, crop_id: @sr_activity.crop_id, date: @sr_activity.date, dealer_id: @sr_activity.dealer_id, farmer_id: @sr_activity.farmer_id, farmer_recommendation: @sr_activity.farmer_recommendation, meet_dealer_option: @sr_activity.meet_dealer_option, meet_dealer_other: @sr_activity.meet_dealer_other, meet_fa_option: @sr_activity.meet_fa_option, meet_farmer_option: @sr_activity.meet_farmer_option, meet_sm_other: @sr_activity.meet_sm_other, meet_state_manager_option: @sr_activity.meet_state_manager_option, other: @sr_activity.other, pactivity: @sr_activity.pactivity, pocket_id: @sr_activity.pocket_id, position_id: @sr_activity.position_id, state_id: @sr_activity.state_id, user_id: @sr_activity.user_id }
    end

    assert_redirected_to sr_activity_path(assigns(:sr_activity))
  end

  test "should show sr_activity" do
    get :show, id: @sr_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sr_activity
    assert_response :success
  end

  test "should update sr_activity" do
    patch :update, id: @sr_activity, sr_activity: { business_development_id: @sr_activity.business_development_id, cf_option: @sr_activity.cf_option, crop_growth_stage: @sr_activity.crop_growth_stage, crop_id: @sr_activity.crop_id, date: @sr_activity.date, dealer_id: @sr_activity.dealer_id, farmer_id: @sr_activity.farmer_id, farmer_recommendation: @sr_activity.farmer_recommendation, meet_dealer_option: @sr_activity.meet_dealer_option, meet_dealer_other: @sr_activity.meet_dealer_other, meet_fa_option: @sr_activity.meet_fa_option, meet_farmer_option: @sr_activity.meet_farmer_option, meet_sm_other: @sr_activity.meet_sm_other, meet_state_manager_option: @sr_activity.meet_state_manager_option, other: @sr_activity.other, pactivity: @sr_activity.pactivity, pocket_id: @sr_activity.pocket_id, position_id: @sr_activity.position_id, state_id: @sr_activity.state_id, user_id: @sr_activity.user_id }
    assert_redirected_to sr_activity_path(assigns(:sr_activity))
  end

  test "should destroy sr_activity" do
    assert_difference('SrActivity.count', -1) do
      delete :destroy, id: @sr_activity
    end

    assert_redirected_to sr_activities_path
  end
end
