class ProductPrescriptionsController < ApplicationController
  before_action :set_product_prescription, only: [:show, :edit, :update, :destroy]

  # GET /product_prescriptions
  # GET /product_prescriptions.json
  def index
    @product_prescriptions = ProductPrescription.all
  end

  # GET /product_prescriptions/1
  # GET /product_prescriptions/1.json
  def show
  end

  # GET /product_prescriptions/new
  def new
    @product_prescription = ProductPrescription.new
  end

  # GET /product_prescriptions/1/edit
  def edit
  end

  # POST /product_prescriptions
  # POST /product_prescriptions.json
  def create
    @product_prescription = ProductPrescription.new(product_prescription_params)

    respond_to do |format|
      if @product_prescription.save
          format.html { redirect_to @product_prescription, notice: 'Product prescription was successfully created.' }
        format.json { render :show, status: :created, location: @product_prescription }
      else
        format.html { render :new }
        format.json { render json: @product_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_prescriptions/1
  # PATCH/PUT /product_prescriptions/1.json
  def update
    respond_to do |format|
      if @product_prescription.update(product_prescription_params)
        format.html { redirect_to @product_prescription, notice: 'Product prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_prescription }
      else
        format.html { render :edit }
        format.json { render json: @product_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_prescriptions/1
  # DELETE /product_prescriptions/1.json
  def destroy
    @product_prescription.destroy
    respond_to do |format|
      format.html { redirect_to product_prescriptions_url, notice: 'Product prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_prescription
      @product_prescription = ProductPrescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_prescription_params
      params.require(:product_prescription).permit(:dealer_id, :farmer_id, :crop_id, :condition, :crop_growth, :crop_cond, :acreage, :prescribe)
    end
end
