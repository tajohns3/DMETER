require 'test_helper'

class TalukasControllerTest < ActionController::TestCase
  setup do
    @taluka = talukas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talukas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taluka" do
    assert_difference('Taluka.count') do
      post :create, taluka: { taluka: @taluka.taluka }
    end

    assert_redirected_to taluka_path(assigns(:taluka))
  end

  test "should show taluka" do
    get :show, id: @taluka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taluka
    assert_response :success
  end

  test "should update taluka" do
    patch :update, id: @taluka, taluka: { taluka: @taluka.taluka }
    assert_redirected_to taluka_path(assigns(:taluka))
  end

  test "should destroy taluka" do
    assert_difference('Taluka.count', -1) do
      delete :destroy, id: @taluka
    end

    assert_redirected_to talukas_path
  end
end
