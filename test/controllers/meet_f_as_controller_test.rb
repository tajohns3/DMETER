require 'test_helper'

class MeetFAsControllerTest < ActionController::TestCase
  setup do
    @meet_fa = meet_fas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meet_fas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet_fa" do
    assert_difference('MeetFa.count') do
      post :create, meet_fa: { purpose: @meet_fa.purpose, sr_activity_id: @meet_fa.sr_activity_id }
    end

    assert_redirected_to meet_fa_path(assigns(:meet_fa))
  end

  test "should show meet_fa" do
    get :show, id: @meet_fa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet_fa
    assert_response :success
  end

  test "should update meet_fa" do
    patch :update, id: @meet_fa, meet_fa: { purpose: @meet_fa.purpose, sr_activity_id: @meet_fa.sr_activity_id }
    assert_redirected_to meet_fa_path(assigns(:meet_fa))
  end

  test "should destroy meet_fa" do
    assert_difference('MeetFa.count', -1) do
      delete :destroy, id: @meet_fa
    end

    assert_redirected_to meet_fas_path
  end
end
