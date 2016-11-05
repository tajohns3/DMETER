class MeetDealersController < ApplicationController
  before_action :set_meet_dealer, only: [:show, :edit, :update, :destroy]

  # GET /meet_dealers
  # GET /meet_dealers.json
  def index
    @meet_dealers = MeetDealer.all
  end

  # GET /meet_dealers/1
  # GET /meet_dealers/1.json
  def show
  end

  # GET /meet_dealers/new
  def new
    @meet_dealer = MeetDealer.new
  end

  # GET /meet_dealers/1/edit
  def edit
  end

  # POST /meet_dealers
  # POST /meet_dealers.json
  def create
    @meet_dealer = MeetDealer.new(meet_dealer_params)

    respond_to do |format|
      if @meet_dealer.save
        format.html { redirect_to @meet_dealer, notice: 'Meet dealer was successfully created.' }
        format.json { render :show, status: :created, location: @meet_dealer }
      else
        format.html { render :new }
        format.json { render json: @meet_dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meet_dealers/1
  # PATCH/PUT /meet_dealers/1.json
  def update
    respond_to do |format|
      if @meet_dealer.update(meet_dealer_params)
        format.html { redirect_to @meet_dealer, notice: 'Meet dealer was successfully updated.' }
        format.json { render :show, status: :ok, location: @meet_dealer }
      else
        format.html { render :edit }
        format.json { render json: @meet_dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meet_dealers/1
  # DELETE /meet_dealers/1.json
  def destroy
    @meet_dealer.destroy
    respond_to do |format|
      format.html { redirect_to meet_dealers_url, notice: 'Meet dealer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meet_dealer
      @meet_dealer = MeetDealer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meet_dealer_params
      params.require(:meet_dealer).permit(:purpose, :other, :sr_activity_id)
    end
end
