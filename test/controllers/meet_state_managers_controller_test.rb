require 'test_helper'

class MeetStateManagersControllerTest < ActionController::TestCase
  setup do
    @meet_state_manager = meet_state_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meet_state_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet_state_manager" do
    assert_difference('MeetStateManager.count') do
      post :create, meet_state_manager: { dealer_id: @meet_state_manager.dealer_id, other: @meet_state_manager.other, pocket_id: @meet_state_manager.pocket_id, position_id: @meet_state_manager.position_id, purpose: @meet_state_manager.purpose, sr_activity_id: @meet_state_manager.sr_activity_id }
    end

    assert_redirected_to meet_state_manager_path(assigns(:meet_state_manager))
  end

  test "should show meet_state_manager" do
    get :show, id: @meet_state_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet_state_manager
    assert_response :success
  end

  test "should update meet_state_manager" do
    patch :update, id: @meet_state_manager, meet_state_manager: { dealer_id: @meet_state_manager.dealer_id, other: @meet_state_manager.other, pocket_id: @meet_state_manager.pocket_id, position_id: @meet_state_manager.position_id, purpose: @meet_state_manager.purpose, sr_activity_id: @meet_state_manager.sr_activity_id }
    assert_redirected_to meet_state_manager_path(assigns(:meet_state_manager))
  end

  test "should destroy meet_state_manager" do
    assert_difference('MeetStateManager.count', -1) do
      delete :destroy, id: @meet_state_manager
    end

    assert_redirected_to meet_state_managers_path
  end
end
