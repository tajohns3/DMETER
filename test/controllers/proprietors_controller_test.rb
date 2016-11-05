require 'test_helper'

class ProprietorsControllerTest < ActionController::TestCase
  setup do
    @proprietor = proprietors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proprietors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proprietor" do
    assert_difference('Proprietor.count') do
      post :create, proprietor: { designation: @proprietor.designation, fname: @proprietor.fname, mname: @proprietor.mname, phnumber: @proprietor.phnumber, sname: @proprietor.sname, staddress: @proprietor.staddress }
    end

    assert_redirected_to proprietor_path(assigns(:proprietor))
  end

  test "should show proprietor" do
    get :show, id: @proprietor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proprietor
    assert_response :success
  end

  test "should update proprietor" do
    patch :update, id: @proprietor, proprietor: { designation: @proprietor.designation, fname: @proprietor.fname, mname: @proprietor.mname, phnumber: @proprietor.phnumber, sname: @proprietor.sname, staddress: @proprietor.staddress }
    assert_redirected_to proprietor_path(assigns(:proprietor))
  end

  test "should destroy proprietor" do
    assert_difference('Proprietor.count', -1) do
      delete :destroy, id: @proprietor
    end

    assert_redirected_to proprietors_path
  end
end
