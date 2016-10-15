class TalukasController < ApplicationController
  before_action :set_taluka, only: [:show, :edit, :update, :destroy]

  # GET /talukas
  # GET /talukas.json
  def index
    @talukas = Taluka.all
  end

  # GET /talukas/1
  # GET /talukas/1.json
  def show
  end

  # GET /talukas/new
  def new
    @taluka = Taluka.new
  end

  # GET /talukas/1/edit
  def edit
  end

  # POST /talukas
  # POST /talukas.json
  def create
    @taluka = Taluka.new(taluka_params)

    respond_to do |format|
      if @taluka.save
        format.html { redirect_to @taluka, notice: 'Taluka was successfully created.' }
        format.json { render :show, status: :created, location: @taluka }
      else
        format.html { render :new }
        format.json { render json: @taluka.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /talukas/1
  # PATCH/PUT /talukas/1.json
  def update
    respond_to do |format|
      if @taluka.update(taluka_params)
        format.html { redirect_to @taluka, notice: 'Taluka was successfully updated.' }
        format.json { render :show, status: :ok, location: @taluka }
      else
        format.html { render :edit }
        format.json { render json: @taluka.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talukas/1
  # DELETE /talukas/1.json
  def destroy
    @taluka.destroy
    respond_to do |format|
      format.html { redirect_to talukas_url, notice: 'Taluka was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taluka
      @taluka = Taluka.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taluka_params
      params.require(:taluka).permit(:taluka)
    end
end
