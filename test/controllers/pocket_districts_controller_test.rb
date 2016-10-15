require 'test_helper'

class PocketDistrictsControllerTest < ActionController::TestCase
  setup do
    @pocket_district = pocket_districts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocket_districts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket_district" do
    assert_difference('PocketDistrict.count') do
      post :create, pocket_district: { district_id: @pocket_district.district_id, pocket_id: @pocket_district.pocket_id }
    end

    assert_redirected_to pocket_district_path(assigns(:pocket_district))
  end

  test "should show pocket_district" do
    get :show, id: @pocket_district
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocket_district
    assert_response :success
  end

  test "should update pocket_district" do
    patch :update, id: @pocket_district, pocket_district: { district_id: @pocket_district.district_id, pocket_id: @pocket_district.pocket_id }
    assert_redirected_to pocket_district_path(assigns(:pocket_district))
  end

  test "should destroy pocket_district" do
    assert_difference('PocketDistrict.count', -1) do
      delete :destroy, id: @pocket_district
    end

    assert_redirected_to pocket_districts_path
  end
end
