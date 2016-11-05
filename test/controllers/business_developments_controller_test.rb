require 'test_helper'

class BusinessDevelopmentsControllerTest < ActionController::TestCase
  setup do
    @business_development = business_developments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_developments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_development" do
    assert_difference('BusinessDevelopment.count') do
      post :create, business_development: { a_attendees: @business_development.a_attendees, b_attendees: @business_development.b_attendees, c_attendees: @business_development.c_attendees, numattendees: @business_development.numattendees, option: @business_development.option, pocket_id: @business_development.pocket_id, pre_demonstration_id: @business_development.pre_demonstration_id, sample_request: @business_development.sample_request }
    end

    assert_redirected_to business_development_path(assigns(:business_development))
  end

  test "should show business_development" do
    get :show, id: @business_development
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_development
    assert_response :success
  end

  test "should update business_development" do
    patch :update, id: @business_development, business_development: { a_attendees: @business_development.a_attendees, b_attendees: @business_development.b_attendees, c_attendees: @business_development.c_attendees, numattendees: @business_development.numattendees, option: @business_development.option, pocket_id: @business_development.pocket_id, pre_demonstration_id: @business_development.pre_demonstration_id, sample_request: @business_development.sample_request }
    assert_redirected_to business_development_path(assigns(:business_development))
  end

  test "should destroy business_development" do
    assert_difference('BusinessDevelopment.count', -1) do
      delete :destroy, id: @business_development
    end

    assert_redirected_to business_developments_path
  end
end
