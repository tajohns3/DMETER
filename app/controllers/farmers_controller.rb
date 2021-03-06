class FarmersController < ApplicationController
  before_action :set_farmer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /farmers
  # GET /farmers.json
  def index
    if params[:active]=='checkem'
      @farmers = Farmer.where(callverified: 0x4E6F).paginate(page: params[:page], per_page: 10)
    else
      @farmers = Farmer.where.not(name: "Not Assigned").paginate(page: params[:page], per_page: 10)
    end

  end

  # GET /farmers/1
  # GET /farmers/1.json
  def show
  end

  # GET /farmers/new
  def new
    @farmer = Farmer.new
  end

  # GET /farmers/1/edit
  def edit
  end

  # POST /farmers
  # POST /farmers.json
  def create
    @farmer = Farmer.new(farmer_params)

    respond_to do |format|
      if @farmer.save
        format.html { redirect_to @farmer, notice: 'Farmer was successfully created.' }
        format.json { render :show, status: :created, location: @farmer }
      else
        format.html { render :new }
        format.json { render json: @farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farmers/1
  # PATCH/PUT /farmers/1.json
  def update
    respond_to do |format|
      if @farmer.update(farmer_params)
        format.html { redirect_to @farmer, notice: 'Farmer was successfully updated.' }
        format.json { render :show, status: :ok, location: @farmer }
      else
        format.html { render :edit }
        format.json { render json: @farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farmers/1
  # DELETE /farmers/1.json
  def destroy
    @farmer.destroy
    respond_to do |format|
      format.html { redirect_to farmers_url, notice: 'Farmer was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?

  end
    # Use callbacks to share common setup or constraints between actions.
    def set_farmer
      @farmer = Farmer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farmer_params
      params.require(:farmer).permit( :state_id, :useridstmgr, :useridamgr, :useridsr, :pocket_id, :dealer_id, :name, :village_id, :phnumber, :crop_id, :acreage, :unit, :irr_source, :introcall, :callverified, :pocket_dat_id, :position_id, :user_id, :manager_id, farmcrops_attributes: [:id, :crop_id, :acreage, :unit, :irr_source, :done, :_destroy], crops_attributes: [:id, :crop, :done, :_destroy])
    end
end