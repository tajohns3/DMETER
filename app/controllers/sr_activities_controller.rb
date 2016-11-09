class SrActivitiesController < ApplicationController
  before_action :set_sr_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /sr_activities
  # GET /sr_activities.json
  def index
    @sr_activities = SrActivity.all
  end

  # GET /sr_activities/1
  # GET /sr_activities/1.json
  def show
  end

  # GET /sr_activities/new
  def new
    @sr_activity = SrActivity.new
    @sr_activity.build_business_development
    @sr_activity.build_meet_state_manager
    @sr_activity.build_meet_dealer
    @sr_activity.build_meet_fa
    @sr_activity.build_meet_sr_farmer

  end

  # GET /sr_activities/1/edit
  def edit
    @sr_activity.build_business_development
    @sr_activity.build_meet_state_manager
    @sr_activity.build_meet_dealer
    @sr_activity.build_meet_fa
    @sr_activity.build_meet_sr_farmer
  end

  # POST /sr_activities
  # POST /sr_activities.json
  def create
    @sr_activity = SrActivity.new(sr_activity_params)

    respond_to do |format|
      if @sr_activity.save
        format.html { redirect_to @sr_activity, notice: 'Sr activity was successfully created.' }
        format.json { render :show, status: :created, location: @sr_activity }

      else
        @sr_activity.build_business_development
        @sr_activity.build_meet_state_manager
        @sr_activity.build_meet_dealer
        @sr_activity.build_meet_fa
        @sr_activity.build_meet_sr_farmer

        format.html { render :new }
        format.json { render json: @sr_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sr_activities/1
  # PATCH/PUT /sr_activities/1.json
  def update
    respond_to do |format|
      if @sr_activity.update(sr_activity_params)
        format.html { redirect_to @sr_activity, notice: 'Sr activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @sr_activity }
      else
        format.html { render :edit }
        format.json { render json: @sr_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sr_activities/1
  # DELETE /sr_activities/1.json
  def destroy
    @sr_activity.destroy
    respond_to do |format|
      format.html { redirect_to sr_activities_url, notice: 'Sr activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_sr_activity
      @sr_activity = SrActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sr_activity_params
      params.require(:sr_activity).permit(:state_id, :user_id, :date, :pactivity, :cf_option, :other,:manager_id,
      business_development_attributes:[:id,:pre_demonstration_id, :pocket_id, :option, :sample_request, :numattendees, :a_attendees, :b_attendees, :c_attendees,:sr_activity_id,:_destroy],
      meet_state_manager_attributes:[:id,:pocket_id, :dealer_id, :position_id, :purpose, :other, :sr_activity_id,:_destroy],
      meet_dealer_attributes:[:id,:purpose, :other, :sr_activity_id, :_destroy],
      meet_fa_attributes:[:id,:sr_activity_id, :purpose, :_destroy],
      meet_sr_farmer_attributes:[:id,:farmer_id, :crop_id, :crop_condition, :crop_growth, :recommendation, :purpose, :sr_activity_id,:_destroy])
    end
end
