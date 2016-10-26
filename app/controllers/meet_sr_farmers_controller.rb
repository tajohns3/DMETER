class MeetSrFarmersController < ApplicationController
  before_action :set_meet_sr_farmer, only: [:show, :edit, :update, :destroy]

  # GET /meet_sr_farmers
  # GET /meet_sr_farmers.json
  def index
    @meet_sr_farmers = MeetSrFarmer.all
  end

  # GET /meet_sr_farmers/1
  # GET /meet_sr_farmers/1.json
  def show
  end

  # GET /meet_sr_farmers/new
  def new
    @meet_sr_farmer = MeetSrFarmer.new
  end

  # GET /meet_sr_farmers/1/edit
  def edit
  end

  # POST /meet_sr_farmers
  # POST /meet_sr_farmers.json
  def create
    @meet_sr_farmer = MeetSrFarmer.new(meet_sr_farmer_params)

    respond_to do |format|
      if @meet_sr_farmer.save
        format.html { redirect_to @meet_sr_farmer, notice: 'Meet sr farmer was successfully created.' }
        format.json { render :show, status: :created, location: @meet_sr_farmer }
      else
        format.html { render :new }
        format.json { render json: @meet_sr_farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meet_sr_farmers/1
  # PATCH/PUT /meet_sr_farmers/1.json
  def update
    respond_to do |format|
      if @meet_sr_farmer.update(meet_sr_farmer_params)
        format.html { redirect_to @meet_sr_farmer, notice: 'Meet sr farmer was successfully updated.' }
        format.json { render :show, status: :ok, location: @meet_sr_farmer }
      else
        format.html { render :edit }
        format.json { render json: @meet_sr_farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meet_sr_farmers/1
  # DELETE /meet_sr_farmers/1.json
  def destroy
    @meet_sr_farmer.destroy
    respond_to do |format|
      format.html { redirect_to meet_sr_farmers_url, notice: 'Meet sr farmer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meet_sr_farmer
      @meet_sr_farmer = MeetSrFarmer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meet_sr_farmer_params
      params.require(:meet_sr_farmer).permit(:farmer_id, :crop_id, :crop_condition, :crop_growth, :recommendation, :purpose, :sr_activity_id)
    end
end
