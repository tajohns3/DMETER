class DealerSecuritiesController < ApplicationController
  before_action :set_dealer_security, only: [:show, :edit, :update, :destroy]

  # GET /dealer_securities
  # GET /dealer_securities.json
  def index
    @dealer_securities = DealerSecurity.all
  end

  # GET /dealer_securities/1
  # GET /dealer_securities/1.json
  def show
  end

  # GET /dealer_securities/new
  def new
    @dealer_security = DealerSecurity.new
  end

  # GET /dealer_securities/1/edit
  def edit
  end

  # POST /dealer_securities
  # POST /dealer_securities.json
  def create
    @dealer_security = DealerSecurity.new(dealer_security_params)

    respond_to do |format|
      if @dealer_security.save
        format.html { redirect_to @dealer_security, notice: 'Dealer security was successfully created.' }
        format.json { render :show, status: :created, location: @dealer_security }
      else
        format.html { render :new }
        format.json { render json: @dealer_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealer_securities/1
  # PATCH/PUT /dealer_securities/1.json
  def update
    respond_to do |format|
      if @dealer_security.update(dealer_security_params)
        format.html { redirect_to @dealer_security, notice: 'Dealer security was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer_security }
      else
        format.html { render :edit }
        format.json { render json: @dealer_security.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_securities/1
  # DELETE /dealer_securities/1.json
  def destroy
    @dealer_security.destroy
    respond_to do |format|
      format.html { redirect_to dealer_securities_url, notice: 'Dealer security was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer_security
      @dealer_security = DealerSecurity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_security_params
      params.require(:dealer_security).permit(:dealer_id, :security_check_id)
    end
end
