class DemonstrationsController < ApplicationController
  before_action :set_demonstration, only: [:show, :edit, :update, :destroy]
  before_action :input_user, only: [:new,:edit, :update,:destroy]
  # GET /demonstrations
  # GET /demonstrations.json
  def index
    if params[:active]=='checkem'
      @demonstrations = Demonstration.where(demo_status: 'active').limit(1).paginate(page: params[:page], per_page: 20)
    else
      @demonstrations = Demonstration.paginate(page: params[:page], per_page: 20)
    end




  end



  # GET /demonstrations/1
  # GET /demonstrations/1.json
  def show

  end

  # GET /demonstrations/new
  def new
    @demonstration = Demonstration.new
    @pre_demonstration =PreDemonstration.find(params[:pre_id])

    @demonstration.demonstration_attachments.build


    @pre_demonstration.applications.each  do |app|


      @demonstration.applications.build(:app_date =>app.app_date, :follow_date =>app.follow_date)

    end




  end

  # GET /demonstrations/1/edit
  def edit
    @pre_demonstration = @demonstration.pre_demonstration
  end

  # POST /demonstrations
  # POST /demonstrations.json
  def create
    @demonstration = Demonstration.new(demonstration_params)

    respond_to do |format|
      if @demonstration.save

        format.html { redirect_to @demonstration, notice: 'Demonstration was successfully created.' }
        format.json { render :show, status: :created, location: @demonstration }
      else
        format.html { render :new }
        format.json { render json: @demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demonstrations/1
  # PATCH/PUT /demonstrations/1.json
  def update
    respond_to do |format|
      if @demonstration.update(demonstration_params)
        format.html { redirect_to @demonstration, notice: 'Demonstration was successfully updated.' }
        format.json { render :show, status: :ok, location: @demonstration }
      else
        format.html { render :edit }
        format.json { render json: @demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demonstrations/1
  # DELETE /demonstrations/1.json
  def destroy
    @demonstration.destroy
    respond_to do |format|
      format.html { redirect_to demonstrations_url, notice: 'Demonstration was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_demonstration
      @demonstration = Demonstration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demonstration_params
      params.require(:demonstration).permit(:pre_demonstration_id, :demo_status, :fa_activity_id,:demo_code,:position_id,
      applications_attributes: [:id,:pre_demonstration_id,:demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:application_by,:app_comment,{product_ids: []},:_destroy],
      demonstration_attachments_attributes:[:id, :demonstration_id, :avatar,:_destroy])
    end
end
