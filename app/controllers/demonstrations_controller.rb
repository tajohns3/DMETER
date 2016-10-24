class DemonstrationsController < ApplicationController
  before_action :set_demonstration, only: [:show, :edit, :update, :destroy]

  # GET /demonstrations
  # GET /demonstrations.json
  def index
    @demonstrations = Demonstration.all
  end

  # GET /demonstrations/1
  # GET /demonstrations/1.json
  def show
  end

  # GET /demonstrations/new
  def new
    @demonstration = Demonstration.new
    @pre_demonstration =PreDemonstration.find(params[:pre_id])
    @demonstration.applications.build
  end

  # GET /demonstrations/1/edit
  def edit
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
      format.html { redirect_to demonstrations_url, notice: 'Demonstration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demonstration
      @demonstration = Demonstration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demonstration_params
      params.require(:demonstration).permit(:pre_demonstration_id, :appdone_by, :demo_status, :fa_activity_id,:image,
      applications_attributes: [:id,:pre_demonstration_id,:demonstration_id,:app_area,:app_date,:competitor,:app_type,:follow_date,:follow_comment,:app_comment,{product_ids: []},:_destroy])
    end
end
