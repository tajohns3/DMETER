require 'test_helper'

class PositionsControllerTest < ActionController::TestCase
  setup do
    @position = positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position" do
    assert_difference('Position.count') do
      post :create, position: { address: @position.address, contact_number: @position.contact_number, dealer_id: @position.dealer_id, district: @position.district, fa_number: @position.fa_number, first_name: @position.first_name, form: @position.form, no: @position.no, pin_code: @position.pin_code, surname: @position.surname, taluka: @position.taluka, yes: @position.yes }
    end

    assert_redirected_to position_path(assigns(:position))
  end

  test "should show position" do
    get :show, id: @position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position
    assert_response :success
  end

  test "should update position" do
    patch :update, id: @position, position: { address: @position.address, contact_number: @position.contact_number, dealer_id: @position.dealer_id, district: @position.district, fa_number: @position.fa_number, first_name: @position.first_name, form: @position.form, no: @position.no, pin_code: @position.pin_code, surname: @position.surname, taluka: @position.taluka, yes: @position.yes }
    assert_redirected_to position_path(assigns(:position))
  end

  test "should destroy position" do
    assert_difference('Position.count', -1) do
      delete :destroy, id: @position
    end

    assert_redirected_to positions_path
  end
end
