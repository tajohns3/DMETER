class PocketCropsController < ApplicationController
  before_action :set_pocket_crop, only: [:show, :edit, :update, :destroy]

  # GET /pocket_crops
  # GET /pocket_crops.json
  def index
    @pocket_crops = PocketCrop.all
  end

  # GET /pocket_crops/1
  # GET /pocket_crops/1.json
  def show
  end

  # GET /pocket_crops/new
  def new
    @pocket_crop = PocketCrop.new
  end

  # GET /pocket_crops/1/edit
  def edit
  end

  # POST /pocket_crops
  # POST /pocket_crops.json
  def create
    @pocket_crop = PocketCrop.new(pocket_crop_params)

    respond_to do |format|
      if @pocket_crop.save
        format.html { redirect_to @pocket_crop, notice: 'Pocket crop was successfully created.' }
        format.json { render :show, status: :created, location: @pocket_crop }
      else
        format.html { render :new }
        format.json { render json: @pocket_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocket_crops/1
  # PATCH/PUT /pocket_crops/1.json
  def update
    respond_to do |format|
      if @pocket_crop.update(pocket_crop_params)
        format.html { redirect_to @pocket_crop, notice: 'Pocket crop was successfully updated.' }
        format.json { render :show, status: :ok, location: @pocket_crop }
      else
        format.html { render :edit }
        format.json { render json: @pocket_crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocket_crops/1
  # DELETE /pocket_crops/1.json
  def destroy
    @pocket_crop.destroy
    respond_to do |format|
      format.html { redirect_to pocket_crops_url, notice: 'Pocket crop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket_crop
      @pocket_crop = PocketCrop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pocket_crop_params
      params.require(:pocket_crop).permit(:pocket_id, :crop_id)
    end
end
