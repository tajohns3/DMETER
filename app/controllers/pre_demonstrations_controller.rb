class PreDemonstrationsController < ApplicationController
  before_action :set_pre_demonstration, only: [:show, :edit, :update, :destroy]
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /pre_demonstrations
  # GET /pre_demonstrations.json
  def index
    if params[:pending]
      @positions=Position.find(params[:pending])
      @pre_demonstrations= @positions.fa_activities.collect(&:pre_demonstrations).flatten.uniq

    else
    @pre_demonstrations = PreDemonstration.all
      end
  end

  # GET /pre_demonstrations/1
  # GET /pre_demonstrations/1.json
  def show
  end

  # GET /pre_demonstrations/new
  def new
    @pre_demonstration = PreDemonstration.new
  end

  # GET /pre_demonstrations/1/edit
  def edit
  end

  # POST /pre_demonstrations
  # POST /pre_demonstrations.json
  def create
    @pre_demonstration = PreDemonstration.new(pre_demonstration_params)

    respond_to do |format|
      if @pre_demonstration.save
        format.html { redirect_to @pre_demonstration, notice: 'Pre demonstration was successfully created.' }
        format.json { render :show, status: :created, location: @pre_demonstration }
      else
        format.html { render :new }
        format.json { render json: @pre_demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_demonstrations/1
  # PATCH/PUT /pre_demonstrations/1.json
  def update
    respond_to do |format|
      if @pre_demonstration.update(pre_demonstration_params)
        format.html { redirect_to @pre_demonstration, notice: 'Pre demonstration was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_demonstration }
      else
        format.html { render :edit }
        format.json { render json: @pre_demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_demonstrations/1
  # DELETE /pre_demonstrations/1.json
  def destroy
    @pre_demonstration.destroy
    respond_to do |format|
      format.html { redirect_to pre_demonstrations_url, notice: 'Pre demonstration was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_demonstration
      @pre_demonstration = PreDemonstration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_demonstration_params
      params.require(:pre_demonstration).permit(:farmer_id, :crop_id, :fa_activity, :crop_growth, :condition, :status, :demo_code,
                                                applications_attributes: [:id,:pre_demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,{product_ids: []},:_destroy])
    end
end
