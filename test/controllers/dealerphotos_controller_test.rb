require 'test_helper'

class DealerphotosControllerTest < ActionController::TestCase
  setup do
    @dealerphoto = dealerphotos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealerphotos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealerphoto" do
    assert_difference('Dealerphoto.count') do
      post :create, dealerphoto: { avatar: @dealerphoto.avatar, avatar_photo: @dealerphoto.avatar_photo, dealer_id: @dealerphoto.dealer_id }
    end

    assert_redirected_to dealerphoto_path(assigns(:dealerphoto))
  end

  test "should show dealerphoto" do
    get :show, id: @dealerphoto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealerphoto
    assert_response :success
  end

  test "should update dealerphoto" do
    patch :update, id: @dealerphoto, dealerphoto: { avatar: @dealerphoto.avatar, avatar_photo: @dealerphoto.avatar_photo, dealer_id: @dealerphoto.dealer_id }
    assert_redirected_to dealerphoto_path(assigns(:dealerphoto))
  end

  test "should destroy dealerphoto" do
    assert_difference('Dealerphoto.count', -1) do
      delete :destroy, id: @dealerphoto
    end

    assert_redirected_to dealerphotos_path
  end
end
