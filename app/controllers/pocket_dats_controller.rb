class PocketDatsController < ApplicationController
  before_action :set_pocket_dat, only: [:show, :edit, :update, :destroy]

  # GET /pocket_dats
  # GET /pocket_dats.json
  def index
    @pocket_dats = PocketDat.all
  end

  # GET /pocket_dats/1
  # GET /pocket_dats/1.json
  def show
  end

  # GET /pocket_dats/new
  def new
    @pocket_dat = PocketDat.new
  end

  # GET /pocket_dats/1/edit
  def edit
  end

  # POST /pocket_dats
  # POST /pocket_dats.json
  def create
    @pocket_dat = PocketDat.new(pocket_dat_params)

    respond_to do |format|
      if @pocket_dat.save
        format.html { redirect_to @pocket_dat, notice: 'Pocket dat was successfully created.' }
        format.json { render :show, status: :created, location: @pocket_dat }
      else
        format.html { render :new }
        format.json { render json: @pocket_dat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocket_dats/1
  # PATCH/PUT /pocket_dats/1.json
  def update
    respond_to do |format|
      if @pocket_dat.update(pocket_dat_params)
        format.html { redirect_to @pocket_dat, notice: 'Pocket dat was successfully updated.' }
        format.json { render :show, status: :ok, location: @pocket_dat }
      else
        format.html { render :edit }
        format.json { render json: @pocket_dat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocket_dats/1
  # DELETE /pocket_dats/1.json
  def destroy
    @pocket_dat.destroy
    respond_to do |format|
      format.html { redirect_to pocket_dats_url, notice: 'Pocket dat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket_dat
      @pocket_dat = PocketDat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pocket_dat_params
      params.require(:pocket_dat).permit(:pocket_id, :pocket_info_id, :taluka_id, :taluka)
    end
end
