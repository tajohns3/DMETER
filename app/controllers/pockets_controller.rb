class PocketsController < ApplicationController
  before_action :set_pocket, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /pockets
  # GET /pockets.json
  def index
    @pockets = Pocket.paginate(page: params[:page], per_page: 20)

  end

  # GET /pockets/1
  # GET /pockets/1.json
  def show

  end

  # GET /pockets/new
  def new
    @pocket = Pocket.new
    pocket_info =@pocket.pocket_dats.build


  end

  # GET /pockets/1/edit
  def edit
  end

  # POST /pockets
  # POST /pockets.json
  def create
    @pocket = Pocket.new(pocket_params)

    respond_to do |format|
      if @pocket.save
        format.html { redirect_to @pocket, notice: 'Pocket was successfully created.' }
        format.json { render :show, status: :created, location: @pocket }
      else
        format.html { render :new }
        format.json { render json: @pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pockets/1
  # PATCH/PUT /pockets/1.json
  def update
    respond_to do |format|
      if @pocket.update(pocket_params)
        format.html { redirect_to @pocket, notice: 'Pocket was successfully updated.' }
        format.json { render :show, status: :ok, location: @pocket }
      else
        format.html { render :edit }
        format.json { render json: @pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pockets/1
  # DELETE /pockets/1.json
  def destroy
    @pocket.destroy
    respond_to do |format|
      format.html { redirect_to pockets_url, notice: 'Pocket was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_pocket
      @pocket = Pocket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pocket_params
      params.require(:pocket).permit(:state_id, :user_id, :pocket_name, :user_id, :district_id, :crop_id, :type_a, :type_b, :type_c, :type_d, :total_pdealer, :agriculture_land, :percent_irr, pocket_dats_attributes:[:id, :pocket_id, :pocket_info_id, :taluka, :village, :dealer_id, :position_id, :farmer_id,  :_destroy],
                                      district_ids:[],
                                      crop_ids:[])
    end
end
