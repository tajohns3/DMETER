class DealerVisitsController < ApplicationController
  before_action :set_dealer_visit, only: [:show, :edit, :update, :destroy]

  # GET /dealer_visits
  # GET /dealer_visits.json
  def index
    @dealer_visits = DealerVisit.all
  end

  # GET /dealer_visits/1
  # GET /dealer_visits/1.json
  def show
  end

  # GET /dealer_visits/new
  def new
    @dealer_visit = DealerVisit.new
  end

  # GET /dealer_visits/1/edit
  def edit
  end

  # POST /dealer_visits
  # POST /dealer_visits.json
  def create
    @dealer_visit = DealerVisit.new(dealer_visit_params)

    respond_to do |format|
      if @dealer_visit.save
        format.html { redirect_to @dealer_visit, notice: 'Dealer visit was successfully created.' }
        format.json { render :show, status: :created, location: @dealer_visit }
      else
        format.html { render :new }
        format.json { render json: @dealer_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealer_visits/1
  # PATCH/PUT /dealer_visits/1.json
  def update
    respond_to do |format|
      if @dealer_visit.update(dealer_visit_params)
        format.html { redirect_to @dealer_visit, notice: 'Dealer visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer_visit }
      else
        format.html { render :edit }
        format.json { render json: @dealer_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_visits/1
  # DELETE /dealer_visits/1.json
  def destroy
    @dealer_visit.destroy
    respond_to do |format|
      format.html { redirect_to dealer_visits_url, notice: 'Dealer visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer_visit
      @dealer_visit = DealerVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_visit_params
      params.require(:dealer_visit).permit(:dealer_id, :fa_activity_id, :farmer_id, :number_farmer, :purpose)
    end
end
