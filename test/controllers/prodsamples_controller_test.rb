require 'test_helper'

class ProdsamplesControllerTest < ActionController::TestCase
  setup do
    @prodsample = prodsamples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prodsamples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prodsample" do
    assert_difference('Prodsample.count') do
      post :create, prodsample: { faid: @prodsample.faid, psid: @prodsample.psid, sample_purp: @prodsample.sample_purp, sampletype: @prodsample.sampletype, stid: @prodsample.stid }
    end

    assert_redirected_to prodsample_path(assigns(:prodsample))
  end

  test "should show prodsample" do
    get :show, id: @prodsample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prodsample
    assert_response :success
  end

  test "should update prodsample" do
    patch :update, id: @prodsample, prodsample: { faid: @prodsample.faid, psid: @prodsample.psid, sample_purp: @prodsample.sample_purp, sampletype: @prodsample.sampletype, stid: @prodsample.stid }
    assert_redirected_to prodsample_path(assigns(:prodsample))
  end

  test "should destroy prodsample" do
    assert_difference('Prodsample.count', -1) do
      delete :destroy, id: @prodsample
    end

    assert_redirected_to prodsamples_path
  end
end
