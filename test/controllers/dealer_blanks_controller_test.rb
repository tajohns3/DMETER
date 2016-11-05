require 'test_helper'

class DealerBlanksControllerTest < ActionController::TestCase
  setup do
    @dealer_blank = dealer_blanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealer_blanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealer_blank" do
    assert_difference('DealerBlank.count') do
      post :create, dealer_blank: { blank_check_id: @dealer_blank.blank_check_id, dealer_id: @dealer_blank.dealer_id }
    end

    assert_redirected_to dealer_blank_path(assigns(:dealer_blank))
  end

  test "should show dealer_blank" do
    get :show, id: @dealer_blank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealer_blank
    assert_response :success
  end

  test "should update dealer_blank" do
    patch :update, id: @dealer_blank, dealer_blank: { blank_check_id: @dealer_blank.blank_check_id, dealer_id: @dealer_blank.dealer_id }
    assert_redirected_to dealer_blank_path(assigns(:dealer_blank))
  end

  test "should destroy dealer_blank" do
    assert_difference('DealerBlank.count', -1) do
      delete :destroy, id: @dealer_blank
    end

    assert_redirected_to dealer_blanks_path
  end
end
