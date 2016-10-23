require 'test_helper'

class DemoresultsControllerTest < ActionController::TestCase
  setup do
    @demoresult = demoresults(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demoresults)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demoresult" do
    assert_difference('Demoresult.count') do
      post :create, demoresult: { amid: @demoresult.amid, demostatus: @demoresult.demostatus, faid: @demoresult.faid, pocketid: @demoresult.pocketid, srid: @demoresult.srid }
    end

    assert_redirected_to demoresult_path(assigns(:demoresult))
  end

  test "should show demoresult" do
    get :show, id: @demoresult
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demoresult
    assert_response :success
  end

  test "should update demoresult" do
    patch :update, id: @demoresult, demoresult: { amid: @demoresult.amid, demostatus: @demoresult.demostatus, faid: @demoresult.faid, pocketid: @demoresult.pocketid, srid: @demoresult.srid }
    assert_redirected_to demoresult_path(assigns(:demoresult))
  end

  test "should destroy demoresult" do
    assert_difference('Demoresult.count', -1) do
      delete :destroy, id: @demoresult
    end

    assert_redirected_to demoresults_path
  end
end
