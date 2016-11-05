require 'test_helper'

class DemonstrationAttachmentsControllerTest < ActionController::TestCase
  setup do
    @demonstration_attachment = demonstration_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demonstration_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demonstration_attachment" do
    assert_difference('DemonstrationAttachment.count') do
      post :create, demonstration_attachment: { avatar: @demonstration_attachment.avatar, demonstration_id: @demonstration_attachment.demonstration_id }
    end

    assert_redirected_to demonstration_attachment_path(assigns(:demonstration_attachment))
  end

  test "should show demonstration_attachment" do
    get :show, id: @demonstration_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demonstration_attachment
    assert_response :success
  end

  test "should update demonstration_attachment" do
    patch :update, id: @demonstration_attachment, demonstration_attachment: { avatar: @demonstration_attachment.avatar, demonstration_id: @demonstration_attachment.demonstration_id }
    assert_redirected_to demonstration_attachment_path(assigns(:demonstration_attachment))
  end

  test "should destroy demonstration_attachment" do
    assert_difference('DemonstrationAttachment.count', -1) do
      delete :destroy, id: @demonstration_attachment
    end

    assert_redirected_to demonstration_attachments_path
  end
end
