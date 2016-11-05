require 'test_helper'

class BlankChecksControllerTest < ActionController::TestCase
  setup do
    @blank_check = blank_checks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blank_checks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blank_check" do
    assert_difference('BlankCheck.count') do
      post :create, blank_check: { bank_account: @blank_check.bank_account, bank_name: @blank_check.bank_name, blank_check: @blank_check.blank_check, cheque_num: @blank_check.cheque_num }
    end

    assert_redirected_to blank_check_path(assigns(:blank_check))
  end

  test "should show blank_check" do
    get :show, id: @blank_check
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blank_check
    assert_response :success
  end

  test "should update blank_check" do
    patch :update, id: @blank_check, blank_check: { bank_account: @blank_check.bank_account, bank_name: @blank_check.bank_name, blank_check: @blank_check.blank_check, cheque_num: @blank_check.cheque_num }
    assert_redirected_to blank_check_path(assigns(:blank_check))
  end

  test "should destroy blank_check" do
    assert_difference('BlankCheck.count', -1) do
      delete :destroy, id: @blank_check
    end

    assert_redirected_to blank_checks_path
  end
end
