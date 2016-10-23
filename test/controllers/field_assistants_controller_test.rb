require 'test_helper'

class FieldAssistantsControllerTest < ActionController::TestCase
  setup do
    @field_assistant = field_assistants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:field_assistants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create field_assistant" do
    assert_difference('FieldAssistant.count') do
      post :create, field_assistant: { address: @field_assistant.address, contact_number: @field_assistant.contact_number, dealer_id: @field_assistant.dealer_id, district: @field_assistant.district, experience: @field_assistant.experience, first_name: @field_assistant.first_name, form: @field_assistant.form, pin_code: @field_assistant.pin_code, pocket_id: @field_assistant.pocket_id, state_id: @field_assistant.state_id, surname: @field_assistant.surname, taluka: @field_assistant.taluka, user_id: @field_assistant.user_id }
    end

    assert_redirected_to field_assistant_path(assigns(:field_assistant))
  end

  test "should show field_assistant" do
    get :show, id: @field_assistant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @field_assistant
    assert_response :success
  end

  test "should update field_assistant" do
    patch :update, id: @field_assistant, field_assistant: { address: @field_assistant.address, contact_number: @field_assistant.contact_number, dealer_id: @field_assistant.dealer_id, district: @field_assistant.district, experience: @field_assistant.experience, first_name: @field_assistant.first_name, form: @field_assistant.form, pin_code: @field_assistant.pin_code, pocket_id: @field_assistant.pocket_id, state_id: @field_assistant.state_id, surname: @field_assistant.surname, taluka: @field_assistant.taluka, user_id: @field_assistant.user_id }
    assert_redirected_to field_assistant_path(assigns(:field_assistant))
  end

  test "should destroy field_assistant" do
    assert_difference('FieldAssistant.count', -1) do
      delete :destroy, id: @field_assistant
    end

    assert_redirected_to field_assistants_path
  end
end
