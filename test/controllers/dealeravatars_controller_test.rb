require 'test_helper'

class DealeravatarsControllerTest < ActionController::TestCase
  setup do
    @dealeravatar = dealeravatars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealeravatars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealeravatar" do
    assert_difference('Dealeravatar.count') do
      post :create, dealeravatar: { dealer_id: @dealeravatar.dealer_id, dealer_photo: @dealeravatar.dealer_photo }
    end

    assert_redirected_to dealeravatar_path(assigns(:dealeravatar))
  end

  test "should show dealeravatar" do
    get :show, id: @dealeravatar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealeravatar
    assert_response :success
  end

  test "should update dealeravatar" do
    patch :update, id: @dealeravatar, dealeravatar: { dealer_id: @dealeravatar.dealer_id, dealer_photo: @dealeravatar.dealer_photo }
    assert_redirected_to dealeravatar_path(assigns(:dealeravatar))
  end

  test "should destroy dealeravatar" do
    assert_difference('Dealeravatar.count', -1) do
      delete :destroy, id: @dealeravatar
    end

    assert_redirected_to dealeravatars_path
  end
end
