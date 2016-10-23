require 'test_helper'

class MeetFarmersControllerTest < ActionController::TestCase
  setup do
    @meet_farmer = meet_farmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meet_farmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet_farmer" do
    assert_difference('MeetFarmer.count') do
      post :create, meet_farmer: { consultation: @meet_farmer.consultation, fa_activity_id: @meet_farmer.fa_activity_id, farmer_id: @meet_farmer.farmer_id, product_prescription_id: @meet_farmer.product_prescription_id, purpose: @meet_farmer.purpose }
    end

    assert_redirected_to meet_farmer_path(assigns(:meet_farmer))
  end

  test "should show meet_farmer" do
    get :show, id: @meet_farmer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet_farmer
    assert_response :success
  end

  test "should update meet_farmer" do
    patch :update, id: @meet_farmer, meet_farmer: { consultation: @meet_farmer.consultation, fa_activity_id: @meet_farmer.fa_activity_id, farmer_id: @meet_farmer.farmer_id, product_prescription_id: @meet_farmer.product_prescription_id, purpose: @meet_farmer.purpose }
    assert_redirected_to meet_farmer_path(assigns(:meet_farmer))
  end

  test "should destroy meet_farmer" do
    assert_difference('MeetFarmer.count', -1) do
      delete :destroy, id: @meet_farmer
    end

    assert_redirected_to meet_farmers_path
  end
end
