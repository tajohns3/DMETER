require 'test_helper'

class PocketInfosControllerTest < ActionController::TestCase
  setup do
    @pocket_info = pocket_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocket_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket_info" do
    assert_difference('PocketInfo.count') do
      post :create, pocket_info: { dealer_id: @pocket_info.dealer_id, fa_id: @pocket_info.fa_id, farmer_id: @pocket_info.farmer_id, taluka_id: @pocket_info.taluka_id, village_id: @pocket_info.village_id }
    end

    assert_redirected_to pocket_info_path(assigns(:pocket_info))
  end

  test "should show pocket_info" do
    get :show, id: @pocket_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocket_info
    assert_response :success
  end

  test "should update pocket_info" do
    patch :update, id: @pocket_info, pocket_info: { dealer_id: @pocket_info.dealer_id, fa_id: @pocket_info.fa_id, farmer_id: @pocket_info.farmer_id, taluka_id: @pocket_info.taluka_id, village_id: @pocket_info.village_id }
    assert_redirected_to pocket_info_path(assigns(:pocket_info))
  end

  test "should destroy pocket_info" do
    assert_difference('PocketInfo.count', -1) do
      delete :destroy, id: @pocket_info
    end

    assert_redirected_to pocket_infos_path
  end
end
