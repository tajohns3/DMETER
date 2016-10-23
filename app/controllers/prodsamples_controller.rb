class ProdsamplesController < ApplicationController
  before_action :set_prodsample, only: [:show, :edit, :update, :destroy]

  # GET /prodsamples
  # GET /prodsamples.json
  def index
    @prodsamples = Prodsample.all
  end

  # GET /prodsamples/1
  # GET /prodsamples/1.json
  def show
  end

  # GET /prodsamples/new
  def new
    @prodsample = Prodsample.new
  end

  # GET /prodsamples/1/edit
  def edit
  end

  # POST /prodsamples
  # POST /prodsamples.json
  def create
    @prodsample = Prodsample.new(prodsample_params)

    respond_to do |format|
      if @prodsample.save
        format.html { redirect_to @prodsample, notice: 'Prodsample was successfully created.' }
        format.json { render :show, status: :created, location: @prodsample }
      else
        format.html { render :new }
        format.json { render json: @prodsample.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodsamples/1
  # PATCH/PUT /prodsamples/1.json
  def update
    respond_to do |format|
      if @prodsample.update(prodsample_params)
        format.html { redirect_to @prodsample, notice: 'Prodsample was successfully updated.' }
        format.json { render :show, status: :ok, location: @prodsample }
      else
        format.html { render :edit }
        format.json { render json: @prodsample.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodsamples/1
  # DELETE /prodsamples/1.json
  def destroy
    @prodsample.destroy
    respond_to do |format|
      format.html { redirect_to prodsamples_url, notice: 'Prodsample was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodsample
      @prodsample = Prodsample.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodsample_params
      params.require(:prodsample).permit(:psid, :stid, :faid, :sample_purp, :sampletype)
    end
end
