class DealeravatarsController < ApplicationController
  before_action :set_dealeravatar, only: [:show, :edit, :update, :destroy]

  # GET /dealeravatars
  # GET /dealeravatars.json
  def index
    @dealeravatars = Dealeravatar.all
  end

  # GET /dealeravatars/1
  # GET /dealeravatars/1.json
  def show
  end

  # GET /dealeravatars/new
  def new
    @dealeravatar = Dealeravatar.new
  end

  # GET /dealeravatars/1/edit
  def edit
  end

  # POST /dealeravatars
  # POST /dealeravatars.json
  def create
    @dealeravatar = Dealeravatar.new(dealeravatar_params)

    respond_to do |format|
      if @dealeravatar.save
        format.html { redirect_to @dealeravatar, notice: 'Dealeravatar was successfully created.' }
        format.json { render :show, status: :created, location: @dealeravatar }
      else
        format.html { render :new }
        format.json { render json: @dealeravatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealeravatars/1
  # PATCH/PUT /dealeravatars/1.json
  def update
    respond_to do |format|
      if @dealeravatar.update(dealeravatar_params)
        format.html { redirect_to @dealeravatar, notice: 'Dealeravatar was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealeravatar }
      else
        format.html { render :edit }
        format.json { render json: @dealeravatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealeravatars/1
  # DELETE /dealeravatars/1.json
  def destroy
    @dealeravatar.destroy
    respond_to do |format|
      format.html { redirect_to dealeravatars_url, notice: 'Dealeravatar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealeravatar
      @dealeravatar = Dealeravatar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealeravatar_params
      params.require(:dealeravatar).permit(:dealer_id, :dealer_photo)
    end
end
