class BusinessDevelopmentsController < ApplicationController
  before_action :set_business_development, only: [:show, :edit, :update, :destroy]

  # GET /business_developments
  # GET /business_developments.json
  def index
    @business_developments = BusinessDevelopment.all
  end

  # GET /business_developments/1
  # GET /business_developments/1.json
  def show
  end

  # GET /business_developments/new
  def new
    @business_development = BusinessDevelopment.new
  end

  # GET /business_developments/1/edit
  def edit
  end

  # POST /business_developments
  # POST /business_developments.json
  def create
    @business_development = BusinessDevelopment.new(business_development_params)

    respond_to do |format|
      if @business_development.save
        format.html { redirect_to @business_development, notice: 'Business development was successfully created.' }
        format.json { render :show, status: :created, location: @business_development }
      else
        format.html { render :new }
        format.json { render json: @business_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_developments/1
  # PATCH/PUT /business_developments/1.json
  def update
    respond_to do |format|
      if @business_development.update(business_development_params)
        format.html { redirect_to @business_development, notice: 'Business development was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_development }
      else
        format.html { render :edit }
        format.json { render json: @business_development.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_developments/1
  # DELETE /business_developments/1.json
  def destroy
    @business_development.destroy
    respond_to do |format|
      format.html { redirect_to business_developments_url, notice: 'Business development was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_development
      @business_development = BusinessDevelopment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_development_params
      params.require(:business_development).permit(:pre_demonstration_id, :pocket_id, :option, :sample_request, :numattendees, :a_attendees, :b_attendees, :c_attendees,:sr_activity_id)
    end
end
