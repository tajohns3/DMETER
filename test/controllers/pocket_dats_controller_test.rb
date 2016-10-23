require 'test_helper'

class PocketDatsControllerTest < ActionController::TestCase
  setup do
    @pocket_dat = pocket_dats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocket_dats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket_dat" do
    assert_difference('PocketDat.count') do
      post :create, pocket_dat: { pocket_id: @pocket_dat.pocket_id, pocket_info_id: @pocket_dat.pocket_info_id }
    end

    assert_redirected_to pocket_dat_path(assigns(:pocket_dat))
  end

  test "should show pocket_dat" do
    get :show, id: @pocket_dat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocket_dat
    assert_response :success
  end

  test "should update pocket_dat" do
    patch :update, id: @pocket_dat, pocket_dat: { pocket_id: @pocket_dat.pocket_id, pocket_info_id: @pocket_dat.pocket_info_id }
    assert_redirected_to pocket_dat_path(assigns(:pocket_dat))
  end

  test "should destroy pocket_dat" do
    assert_difference('PocketDat.count', -1) do
      delete :destroy, id: @pocket_dat
    end

    assert_redirected_to pocket_dats_path
  end
end
