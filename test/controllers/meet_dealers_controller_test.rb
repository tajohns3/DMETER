require 'test_helper'

class MeetDealersControllerTest < ActionController::TestCase
  setup do
    @meet_dealer = meet_dealers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meet_dealers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet_dealer" do
    assert_difference('MeetDealer.count') do
      post :create, meet_dealer: { other: @meet_dealer.other, purpose: @meet_dealer.purpose, sr_activity_id: @meet_dealer.sr_activity_id }
    end

    assert_redirected_to meet_dealer_path(assigns(:meet_dealer))
  end

  test "should show meet_dealer" do
    get :show, id: @meet_dealer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet_dealer
    assert_response :success
  end

  test "should update meet_dealer" do
    patch :update, id: @meet_dealer, meet_dealer: { other: @meet_dealer.other, purpose: @meet_dealer.purpose, sr_activity_id: @meet_dealer.sr_activity_id }
    assert_redirected_to meet_dealer_path(assigns(:meet_dealer))
  end

  test "should destroy meet_dealer" do
    assert_difference('MeetDealer.count', -1) do
      delete :destroy, id: @meet_dealer
    end

    assert_redirected_to meet_dealers_path
  end
end
