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
    dealer_visit = @fa_activity.dealer_visits.build
    assist_rep = @fa_activity.assist_reps.build
    pre_demo =@fa_activity.pre_demonstrations.build
    pre_demo.applications.build
    post_demo = @fa_activity.post_demonstrations.build


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
      format.html { redirect_to fa_activities_url, notice: 'Fa activity was successfully deleted.' }
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
      params.require(:fa_activity).permit(:field_assistant_id, :state_id, :user_id, :pocket_id, :date, :comment,:activity,:position_id,
      meet_farmers_attributes: [:id,:fa_activity_id, :farmer_id,:purpose,:dealer_id,:village_id,:number_farmer,:consultation,
      product_prescriptions_attributes:[:dealer_id,:farmer_id,:crop_id,:condition,:crop_growth,:crop_cond,
     :acreage,:prescribe,:units,:meet_farmer_id,:_destroy,]],
     dealer_visits_attributes: [:id,:dealer_id,:fa_activity_id,:farmer_id,:number_farmer,:purpose, :_destroy,
     inventories_attributes: [:id, :product_id, :dealer_visit_id]],
     assist_reps_attributes: [:id,:fa_activity_id,:assist,:comment, :_destroy],
     pre_demonstrations_attributes: [:id,:farmer_id,:crop_id, :fa_activity_id,:crop_growth,:condition,:demo_code,:_destroy,
     applications_attributes: [:id,:pre_demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:app_comment, :_destroy,
     product_applications_attributes: [:product_id,:application_id,:quantity, :_destroy],],
     demonstrations_attributes: [:pre_demonstration_id, :done_by,:demo_status, :_destroy,
     applications_attributes: [:id,:pre_demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:app_comment,{product_ids: []},:_destroy]]],
      post_demonstrations_attributes: [:demonstration_id, :observation, :contacrsr, :comment, :demo_photo,:fa_activity_id,:_destroy])
    end
end
