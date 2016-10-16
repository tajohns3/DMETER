require 'test_helper'

class ProductPrescriptionsControllerTest < ActionController::TestCase
  setup do
    @product_prescription = product_prescriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_prescriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_prescription" do
    assert_difference('ProductPrescription.count') do
      post :create, product_prescription: { acreage: @product_prescription.acreage, condition: @product_prescription.condition, crop_cond: @product_prescription.crop_cond, crop_growth: @product_prescription.crop_growth, crop_id: @product_prescription.crop_id, dealer_id: @product_prescription.dealer_id, farmer_id: @product_prescription.farmer_id, prescribe: @product_prescription.prescribe }
    end

    assert_redirected_to product_prescription_path(assigns(:product_prescription))
  end

  test "should show product_prescription" do
    get :show, id: @product_prescription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_prescription
    assert_response :success
  end

  test "should update product_prescription" do
    patch :update, id: @product_prescription, product_prescription: { acreage: @product_prescription.acreage, condition: @product_prescription.condition, crop_cond: @product_prescription.crop_cond, crop_growth: @product_prescription.crop_growth, crop_id: @product_prescription.crop_id, dealer_id: @product_prescription.dealer_id, farmer_id: @product_prescription.farmer_id, prescribe: @product_prescription.prescribe }
    assert_redirected_to product_prescription_path(assigns(:product_prescription))
  end

  test "should destroy product_prescription" do
    assert_difference('ProductPrescription.count', -1) do
      delete :destroy, id: @product_prescription
    end

    assert_redirected_to product_prescriptions_path
  end
end
