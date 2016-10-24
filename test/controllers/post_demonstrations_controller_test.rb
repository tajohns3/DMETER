require 'test_helper'

class PostDemonstrationsControllerTest < ActionController::TestCase
  setup do
    @post_demonstration = post_demonstrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_demonstrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_demonstration" do
    assert_difference('PostDemonstration.count') do
      post :create, post_demonstration: { comment: @post_demonstration.comment, contacrsr: @post_demonstration.contacrsr, demo_photo: @post_demonstration.demo_photo, demonstration_id: @post_demonstration.demonstration_id, observation: @post_demonstration.observation }
    end

    assert_redirected_to post_demonstration_path(assigns(:post_demonstration))
  end

  test "should show post_demonstration" do
    get :show, id: @post_demonstration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_demonstration
    assert_response :success
  end

  test "should update post_demonstration" do
    patch :update, id: @post_demonstration, post_demonstration: { comment: @post_demonstration.comment, contacrsr: @post_demonstration.contacrsr, demo_photo: @post_demonstration.demo_photo, demonstration_id: @post_demonstration.demonstration_id, observation: @post_demonstration.observation }
    assert_redirected_to post_demonstration_path(assigns(:post_demonstration))
  end

  test "should destroy post_demonstration" do
    assert_difference('PostDemonstration.count', -1) do
      delete :destroy, id: @post_demonstration
    end

    assert_redirected_to post_demonstrations_path
  end
end
