require 'test_helper'

class PocketsControllerTest < ActionController::TestCase
  setup do
    @pocket = pockets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pockets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket" do
    assert_difference('Pocket.count') do
      post :create, pocket: { agriculture_land: @pocket.agriculture_land, crop_id: @pocket.crop_id, district_id: @pocket.district_id, percent_irr: @pocket.percent_irr, pocket_name: @pocket.pocket_name, state_id: @pocket.state_id, total_pdealer: @pocket.total_pdealer, type_a: @pocket.type_a, type_b: @pocket.type_b, type_c: @pocket.type_c, type_d: @pocket.type_d, user_id: @pocket.user_id, user_id: @pocket.user_id }
    end

    assert_redirected_to pocket_path(assigns(:pocket))
  end

  test "should show pocket" do
    get :show, id: @pocket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocket
    assert_response :success
  end

  test "should update pocket" do
    patch :update, id: @pocket, pocket: { agriculture_land: @pocket.agriculture_land, crop_id: @pocket.crop_id, district_id: @pocket.district_id, percent_irr: @pocket.percent_irr, pocket_name: @pocket.pocket_name, state_id: @pocket.state_id, total_pdealer: @pocket.total_pdealer, type_a: @pocket.type_a, type_b: @pocket.type_b, type_c: @pocket.type_c, type_d: @pocket.type_d, user_id: @pocket.user_id, user_id: @pocket.user_id }
    assert_redirected_to pocket_path(assigns(:pocket))
  end

  test "should destroy pocket" do
    assert_difference('Pocket.count', -1) do
      delete :destroy, id: @pocket
    end

    assert_redirected_to pockets_path
  end
end
