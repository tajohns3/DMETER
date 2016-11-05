class ProprietorsController < ApplicationController
  before_action :set_proprietor, only: [:show, :edit, :update, :destroy]

  # GET /proprietors
  # GET /proprietors.json
  def index
    @proprietors = Proprietor.all
  end

  # GET /proprietors/1
  # GET /proprietors/1.json
  def show
  end

  # GET /proprietors/new
  def new
    @proprietor = Proprietor.new
  end

  # GET /proprietors/1/edit
  def edit
  end

  # POST /proprietors
  # POST /proprietors.json
  def create
    @proprietor = Proprietor.new(proprietor_params)

    respond_to do |format|
      if @proprietor.save
        format.html { redirect_to @proprietor, notice: 'Proprietor was successfully created.' }
        format.json { render :show, status: :created, location: @proprietor }
      else
        format.html { render :new }
        format.json { render json: @proprietor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proprietors/1
  # PATCH/PUT /proprietors/1.json
  def update
    respond_to do |format|
      if @proprietor.update(proprietor_params)
        format.html { redirect_to @proprietor, notice: 'Proprietor was successfully updated.' }
        format.json { render :show, status: :ok, location: @proprietor }
      else
        format.html { render :edit }
        format.json { render json: @proprietor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proprietors/1
  # DELETE /proprietors/1.json
  def destroy
    @proprietor.destroy
    respond_to do |format|
      format.html { redirect_to proprietors_url, notice: 'Proprietor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proprietor
      @proprietor = Proprietor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proprietor_params
      params.require(:proprietor).permit(:fname, :sname, :mname, :designation, :staddress, :phnumber)
    end
end
