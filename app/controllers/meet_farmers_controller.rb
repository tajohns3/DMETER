class MeetFarmersController < ApplicationController
  before_action :set_meet_farmer, only: [:show, :edit, :update, :destroy]

  # GET /meet_farmers
  # GET /meet_farmers.json
  def index
    @meet_farmers = MeetFarmer.all
  end

  # GET /meet_farmers/1
  # GET /meet_farmers/1.json
  def show
  end

  # GET /meet_farmers/new
  def new
    @meet_farmer = MeetFarmer.new
  end

  # GET /meet_farmers/1/edit
  def edit
  end

  # POST /meet_farmers
  # POST /meet_farmers.json
  def create
    @meet_farmer = MeetFarmer.new(meet_farmer_params)

    respond_to do |format|
      if @meet_farmer.save
        format.html { redirect_to @meet_farmer, notice: 'Meet farmer was successfully created.' }
        format.json { render :show, status: :created, location: @meet_farmer }
      else
        format.html { render :new }
        format.json { render json: @meet_farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meet_farmers/1
  # PATCH/PUT /meet_farmers/1.json
  def update
    respond_to do |format|
      if @meet_farmer.update(meet_farmer_params)
        format.html { redirect_to @meet_farmer, notice: 'Meet farmer was successfully updated.' }
        format.json { render :show, status: :ok, location: @meet_farmer }
      else
        format.html { render :edit }
        format.json { render json: @meet_farmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meet_farmers/1
  # DELETE /meet_farmers/1.json
  def destroy
    @meet_farmer.destroy
    respond_to do |format|
      format.html { redirect_to meet_farmers_url, notice: 'Meet farmer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meet_farmer
      @meet_farmer = MeetFarmer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meet_farmer_params
      params.require(:meet_farmer).permit(:fa_activity_id, :farmer_id, :purpose, :consultation, :product_prescription_id)
    end
end
