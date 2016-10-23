class PocketInfosController < ApplicationController
  before_action :set_pocket_info, only: [:show, :edit, :update, :destroy]

  # GET /pocket_infos
  # GET /pocket_infos.json
  def index
    @pocket_infos = PocketInfo.all
  end

  # GET /pocket_infos/1
  # GET /pocket_infos/1.json
  def show
  end

  # GET /pocket_infos/new
  def new
    @pocket_info = PocketInfo.new
  end

  # GET /pocket_infos/1/edit
  def edit
  end

  # POST /pocket_infos
  # POST /pocket_infos.json
  def create
    @pocket_info = PocketInfo.new(pocket_info_params)

    respond_to do |format|
      if @pocket_info.save
        format.html { redirect_to @pocket_info, notice: 'Pocket info was successfully created.' }
        format.json { render :show, status: :created, location: @pocket_info }
      else
        format.html { render :new }
        format.json { render json: @pocket_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocket_infos/1
  # PATCH/PUT /pocket_infos/1.json
  def update
    respond_to do |format|
      if @pocket_info.update(pocket_info_params)
        format.html { redirect_to @pocket_info, notice: 'Pocket info was successfully updated.' }
        format.json { render :show, status: :ok, location: @pocket_info }
      else
        format.html { render :edit }
        format.json { render json: @pocket_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocket_infos/1
  # DELETE /pocket_infos/1.json
  def destroy
    @pocket_info.destroy
    respond_to do |format|
      format.html { redirect_to pocket_infos_url, notice: 'Pocket info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket_info
      @pocket_info = PocketInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pocket_info_params
      params.require(:pocket_info).permit(:taluka_id, :village_id, :dealer_id, :farmer_id, :fa_id)
    end
end
