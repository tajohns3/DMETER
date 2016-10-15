require 'test_helper'

class PocketCropsControllerTest < ActionController::TestCase
  setup do
    @pocket_crop = pocket_crops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pocket_crops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pocket_crop" do
    assert_difference('PocketCrop.count') do
      post :create, pocket_crop: { crop_id: @pocket_crop.crop_id, pocket_id: @pocket_crop.pocket_id }
    end

    assert_redirected_to pocket_crop_path(assigns(:pocket_crop))
  end

  test "should show pocket_crop" do
    get :show, id: @pocket_crop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pocket_crop
    assert_response :success
  end

  test "should update pocket_crop" do
    patch :update, id: @pocket_crop, pocket_crop: { crop_id: @pocket_crop.crop_id, pocket_id: @pocket_crop.pocket_id }
    assert_redirected_to pocket_crop_path(assigns(:pocket_crop))
  end

  test "should destroy pocket_crop" do
    assert_difference('PocketCrop.count', -1) do
      delete :destroy, id: @pocket_crop
    end

    assert_redirected_to pocket_crops_path
  end
end
