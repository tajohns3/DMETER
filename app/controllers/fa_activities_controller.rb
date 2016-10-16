class FaActivitiesController < ApplicationController
  before_action :set_fa_activity, only: [:show, :edit, :update, :destroy]

  # GET /fa_activities
  # GET /fa_activities.json
  def index
    @fa_activities = FaActivity.all
  end

  # GET /fa_activities/1
  # GET /fa_activities/1.json
  def show
  end

  # GET /fa_activities/new
  def new
    @fa_activity = FaActivity.new
    meet_farmer =@fa_activity.meet_farmers.build
    meet_farmer.product_prescriptions.build


  end

  # GET /fa_activities/1/edit
  def edit
  end

  # POST /fa_activities
  # POST /fa_activities.json
  def create
    @fa_activity = FaActivity.new(fa_activity_params)


    respond_to do |format|
      if @fa_activity.save
        format.html { redirect_to @fa_activity, notice: 'Fa activity was successfully created.' }
        format.json { render :show, status: :created, location: @fa_activity }
      else
        format.html { render :new }
        format.json { render json: @fa_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fa_activities/1
  # PATCH/PUT /fa_activities/1.json
  def update
    respond_to do |format|
      if @fa_activity.update(fa_activity_params)
        format.html { redirect_to @fa_activity, notice: 'Fa activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @fa_activity }
      else
        format.html { render :edit }
        format.json { render json: @fa_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fa_activities/1
  # DELETE /fa_activities/1.json
  def destroy
    @fa_activity.destroy
    respond_to do |format|
      format.html { redirect_to fa_activities_url, notice: 'Fa activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fa_activity
      @fa_activity = FaActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fa_activity_params
      params.require(:fa_activity).permit(:field_assistant_id, :state_id, :user_id, :pocket_id, :date, :comment,
                                          meet_farmers_attributes: [:id,:fa_activity_id, :farmer_id,:purpose,:consultation,
                                                                    product_prescriptions_attributes:[:dealer_id,:farmer_id,:crop_id,:condition,:crop_growth,:crop_cond,
                                                                                                      :acreage,:prescribe,:units,:meet_farmer_id,:_destroy,]])
    end
end
