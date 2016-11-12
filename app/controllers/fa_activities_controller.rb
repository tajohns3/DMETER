class FaActivitiesController < ApplicationController
  before_action :set_fa_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /fa_activities
  # GET /fa_activities.json
  def index
    @fa_activities = FaActivity.paginate(page: params[:page], per_page: 20)

  end

  # GET /fa_activities/1
  # GET /fa_activities/1.json
  def show
    state = @fa_activity.state_id
    @state_manager = User.where(state_id: state)
  end

  # GET /fa_activities/new
  def new
    @fa_activity = FaActivity.new
    meet_farmer =@fa_activity.build_meet_farmer
    meet_farmer.product_prescriptions.build
    dealer_visit = @fa_activity.dealer_visits.build
    assist_rep = @fa_activity.assist_reps.build
    pre_demo =@fa_activity.pre_demonstrations.build
    prod = pre_demo.applications.build
    post_demo = @fa_activity.post_demonstrations.build



    10.times{meet_farmer.activity_farmers.build}
  end

  # GET /fa_activities/1/edit
  def edit
    meet_farmer =@fa_activity.build_meet_farmer
    meet_farmer.product_prescriptions.build
    dealer_visit = @fa_activity.dealer_visits.build
    assist_rep = @fa_activity.assist_reps.build
    pre_demo =@fa_activity.pre_demonstrations.build
    prod = pre_demo.applications.build
    post_demo = @fa_activity.post_demonstrations.build

    10.times{meet_farmer.activity_farmers.build}
  end

  # POST /fa_activities
  # POST /fa_activities.json
  def create
    @fa_activity = FaActivity.new(fa_activity_params)


    respond_to do |format|
      if @fa_activity.save
        if params[:source] == 'Next'
          format.html {redirect_to pre_demonstrations_path(:pending =>@fa_activity.position_id)}
        else
        format.html { redirect_to @fa_activity, notice: 'Field Assistant activity was successfully created.' }
        format.json { render :show, status: :created, location: @fa_activity }
        end
      else
        meet_farmer =@fa_activity.meet_farmers.build
        meet_farmer.product_prescriptions.build
        @fa_activity.dealer_visits.build
        @fa_activity.assist_reps.build
        pre_demo =@fa_activity.pre_demonstrations.build
        pre_demo.applications.build
        @fa_activity.post_demonstrations.build

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
        format.html { redirect_to @fa_activity, notice: 'Field Assistant activity was successfully updated.' }
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
      format.html { redirect_to fa_activities_url, notice: 'Field Assistant activity was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_fa_activity
      @fa_activity = FaActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fa_activity_params
      params.require(:fa_activity).permit(:field_assistant_id, :state_id, :user_id,:manager_id, :pocket_id, :date, :comment,:activity,:position_id,:_destroy,
      meet_farmer_attributes: [:id,:fa_activity_id, :farmer_id,:purpose,:dealer_id,:number_farmer,:consultation,:pocket_dat_id,:_destroy,
      activity_farmers_attributes:[:id,:meet_farmer_id, :farmer_id ,:_destroy],
      product_prescriptions_attributes:[:id,:dealer_id,:farmer_id,:crop_id,:condition,:crop_growth,:crop_cond,
     :acreage,:prescribe,:units,:meet_farmer_id,:_destroy,]],
     dealer_visits_attributes: [:id,:dealer_id,:fa_activity_id,:farmer_id,:number_farmer,:purpose, :_destroy,
     inventories_attributes: [:id, :product_id, :dealer_visit_id,:_destroy]],
     assist_reps_attributes: [:id,:fa_activity_id,:assist,:comment, :_destroy],
     pre_demonstrations_attributes: [:id,:farmer_id,:crop_id, :fa_activity_id,:crop_growth,:condition,:status,:demo_code,:_destroy,
     applications_attributes: [:id,:pre_demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:app_comment, :_destroy,
     product_applications_attributes: [:id,:product_id,:application_id,:quantity,:single_id,:box_id, :_destroy],],
     demonstrations_attributes: [:id,:pre_demonstration_id, :done_by,:demo_status, :_destroy,
     applications_attributes: [:id,:pre_demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:app_comment,{product_ids: []},:_destroy]]],
      post_demonstrations_attributes: [:id,:demonstration_id, :observation, :contacrsr, :comment, :demo_photo,:fa_activity_id,:_destroy,
                                       demonstration_attachments_attributes:[:id,:demonstration_id,:avatar,:post_demonstration_id, :_destroy]])
    end
end
