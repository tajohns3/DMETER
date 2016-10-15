require 'test_helper'

class FaActivitiesControllerTest < ActionController::TestCase
  setup do
    @fa_activity = fa_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fa_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fa_activity" do
    assert_difference('FaActivity.count') do
      post :create, fa_activity: { comment: @fa_activity.comment, date: @fa_activity.date, field_assistant_id: @fa_activity.field_assistant_id, pocket_id: @fa_activity.pocket_id, state_id: @fa_activity.state_id, user_id: @fa_activity.user_id }
    end

    assert_redirected_to fa_activity_path(assigns(:fa_activity))
  end

  test "should show fa_activity" do
    get :show, id: @fa_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fa_activity
    assert_response :success
  end

  test "should update fa_activity" do
    patch :update, id: @fa_activity, fa_activity: { comment: @fa_activity.comment, date: @fa_activity.date, field_assistant_id: @fa_activity.field_assistant_id, pocket_id: @fa_activity.pocket_id, state_id: @fa_activity.state_id, user_id: @fa_activity.user_id }
    assert_redirected_to fa_activity_path(assigns(:fa_activity))
  end

  test "should destroy fa_activity" do
    assert_difference('FaActivity.count', -1) do
      delete :destroy, id: @fa_activity
    end

    assert_redirected_to fa_activities_path
  end
end
