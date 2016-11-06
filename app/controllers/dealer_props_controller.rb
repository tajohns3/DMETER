class DealerPropsController < ApplicationController
  before_action :set_dealer_prop, only: [:show, :edit, :update, :destroy]

  # GET /dealer_props
  # GET /dealer_props.json
  def index
    @dealer_props = DealerProp.all
  end

  # GET /dealer_props/1
  # GET /dealer_props/1.json
  def show
  end

  # GET /dealer_props/new
  def new
    @dealer_prop = DealerProp.new
  end

  # GET /dealer_props/1/edit
  def edit
  end

  # POST /dealer_props
  # POST /dealer_props.json
  def create
    @dealer_prop = DealerProp.new(dealer_prop_params)

    respond_to do |format|
      if @dealer_prop.save
        format.html { redirect_to @dealer_prop, notice: 'Dealer prop was successfully created.' }
        format.json { render :show, status: :created, location: @dealer_prop }
      else
        format.html { render :new }
        format.json { render json: @dealer_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealer_props/1
  # PATCH/PUT /dealer_props/1.json
  def update
    respond_to do |format|
      if @dealer_prop.update(dealer_prop_params)
        format.html { redirect_to @dealer_prop, notice: 'Dealer prop was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer_prop }
      else
        format.html { render :edit }
        format.json { render json: @dealer_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_props/1
  # DELETE /dealer_props/1.json
  def destroy
    @dealer_prop.destroy
    respond_to do |format|
      format.html { redirect_to dealer_props_url, notice: 'Dealer prop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer_prop
      @dealer_prop = DealerProp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_prop_params
      params.require(:dealer_prop).permit(:dealer_id, :proprietor_id)
    end
end
