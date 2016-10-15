class PocketDistrictsController < ApplicationController
  before_action :set_pocket_district, only: [:show, :edit, :update, :destroy]

  # GET /pocket_districts
  # GET /pocket_districts.json
  def index
    @pocket_districts = PocketDistrict.all
  end

  # GET /pocket_districts/1
  # GET /pocket_districts/1.json
  def show
  end

  # GET /pocket_districts/new
  def new
    @pocket_district = PocketDistrict.new
  end

  # GET /pocket_districts/1/edit
  def edit
  end

  # POST /pocket_districts
  # POST /pocket_districts.json
  def create
    @pocket_district = PocketDistrict.new(pocket_district_params)

    respond_to do |format|
      if @pocket_district.save
        format.html { redirect_to @pocket_district, notice: 'Pocket district was successfully created.' }
        format.json { render :show, status: :created, location: @pocket_district }
      else
        format.html { render :new }
        format.json { render json: @pocket_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pocket_districts/1
  # PATCH/PUT /pocket_districts/1.json
  def update
    respond_to do |format|
      if @pocket_district.update(pocket_district_params)
        format.html { redirect_to @pocket_district, notice: 'Pocket district was successfully updated.' }
        format.json { render :show, status: :ok, location: @pocket_district }
      else
        format.html { render :edit }
        format.json { render json: @pocket_district.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pocket_districts/1
  # DELETE /pocket_districts/1.json
  def destroy
    @pocket_district.destroy
    respond_to do |format|
      format.html { redirect_to pocket_districts_url, notice: 'Pocket district was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket_district
      @pocket_district = PocketDistrict.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pocket_district_params
      params.require(:pocket_district).permit(:pocket_id, :district_id)
    end
end
