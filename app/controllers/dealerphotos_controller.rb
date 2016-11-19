class DealerphotosController < ApplicationController
  before_action :set_dealerphoto, only: [:show, :edit, :update, :destroy]

  # GET /dealerphotos
  # GET /dealerphotos.json
  def index
    @dealerphotos = Dealerphoto.all
  end

  # GET /dealerphotos/1
  # GET /dealerphotos/1.json
  def show
  end

  # GET /dealerphotos/new
  def new
    @dealerphoto = Dealerphoto.new
  end

  # GET /dealerphotos/1/edit
  def edit
  end

  # POST /dealerphotos
  # POST /dealerphotos.json
  def create
    @dealerphoto = Dealerphoto.new(dealerphoto_params)

    respond_to do |format|
      if @dealerphoto.save
        format.html { redirect_to @dealerphoto, notice: 'Dealerphoto was successfully created.' }
        format.json { render :show, status: :created, location: @dealerphoto }
      else
        format.html { render :new }
        format.json { render json: @dealerphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealerphotos/1
  # PATCH/PUT /dealerphotos/1.json
  def update
    respond_to do |format|
      if @dealerphoto.update(dealerphoto_params)
        format.html { redirect_to @dealerphoto, notice: 'Dealerphoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealerphoto }
      else
        format.html { render :edit }
        format.json { render json: @dealerphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealerphotos/1
  # DELETE /dealerphotos/1.json
  def destroy
    @dealerphoto.destroy
    respond_to do |format|
      format.html { redirect_to dealerphotos_url, notice: 'Dealerphoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealerphoto
      @dealerphoto = Dealerphoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealerphoto_params
      params.require(:dealerphoto).permit(:dealer_id, :avatar, :avatar_photo)
    end
end
