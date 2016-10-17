require 'test_helper'

class AssistRepsControllerTest < ActionController::TestCase
  setup do
    @assist_rep = assist_reps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assist_reps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assist_rep" do
    assert_difference('AssistRep.count') do
      post :create, assist_rep: { assist: @assist_rep.assist, comment: @assist_rep.comment, fa_activity_id: @assist_rep.fa_activity_id }
    end

    assert_redirected_to assist_rep_path(assigns(:assist_rep))
  end

  test "should show assist_rep" do
    get :show, id: @assist_rep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assist_rep
    assert_response :success
  end

  test "should update assist_rep" do
    patch :update, id: @assist_rep, assist_rep: { assist: @assist_rep.assist, comment: @assist_rep.comment, fa_activity_id: @assist_rep.fa_activity_id }
    assert_redirected_to assist_rep_path(assigns(:assist_rep))
  end

  test "should destroy assist_rep" do
    assert_difference('AssistRep.count', -1) do
      delete :destroy, id: @assist_rep
    end

    assert_redirected_to assist_reps_path
  end
end
