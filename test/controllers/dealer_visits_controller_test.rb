require 'test_helper'

class DealerVisitsControllerTest < ActionController::TestCase
  setup do
    @dealer_visit = dealer_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_visit" do
    assert_difference('DealerVisit.count') do
      post :create, dealer_visit: { dealer_id: @dealer_visit.dealer_id, fa_activities_id: @dealer_visit.fa_activities_id, farmer_id: @dealer_visit.farmer_id, inventory_id: @dealer_visit.inventory_id, number_farmer: @dealer_visit.number_farmer, purpose: @dealer_visit.purpose }
    end

    assert_redirected_to dealer_visit_path(assigns(:dealer_visit))
  end

  test "should show dealer_visit" do
    get :show, id: @dealer_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer_visit
    assert_response :success
  end

  test "should update dealer_visit" do
    patch :update, id: @dealer_visit, dealer_visit: { dealer_id: @dealer_visit.dealer_id, fa_activities_id: @dealer_visit.fa_activities_id, farmer_id: @dealer_visit.farmer_id, inventory_id: @dealer_visit.inventory_id, number_farmer: @dealer_visit.number_farmer, purpose: @dealer_visit.purpose }
    assert_redirected_to dealer_visit_path(assigns(:dealer_visit))
  end

  test "should destroy dealer_visit" do
    assert_difference('DealerVisit.count', -1) do
      delete :destroy, id: @dealer_visit
    end

    assert_redirected_to dealer_visits_path
  end
end
