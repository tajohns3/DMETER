class DealerBlanksController < ApplicationController
  before_action :set_dealer_blank, only: [:show, :edit, :update, :destroy]

  # GET /dealer_blanks
  # GET /dealer_blanks.json
  def index
    @dealer_blanks = DealerBlank.all
  end

  # GET /dealer_blanks/1
  # GET /dealer_blanks/1.json
  def show
  end

  # GET /dealer_blanks/new
  def new
    @dealer_blank = DealerBlank.new
  end

  # GET /dealer_blanks/1/edit
  def edit
  end

  # POST /dealer_blanks
  # POST /dealer_blanks.json
  def create
    @dealer_blank = DealerBlank.new(dealer_blank_params)

    respond_to do |format|
      if @dealer_blank.save
        format.html { redirect_to @dealer_blank, notice: 'Dealer blank was successfully created.' }
        format.json { render :show, status: :created, location: @dealer_blank }
      else
        format.html { render :new }
        format.json { render json: @dealer_blank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealer_blanks/1
  # PATCH/PUT /dealer_blanks/1.json
  def update
    respond_to do |format|
      if @dealer_blank.update(dealer_blank_params)
        format.html { redirect_to @dealer_blank, notice: 'Dealer blank was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer_blank }
      else
        format.html { render :edit }
        format.json { render json: @dealer_blank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealer_blanks/1
  # DELETE /dealer_blanks/1.json
  def destroy
    @dealer_blank.destroy
    respond_to do |format|
      format.html { redirect_to dealer_blanks_url, notice: 'Dealer blank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer_blank
      @dealer_blank = DealerBlank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_blank_params
      params.require(:dealer_blank).permit(:dealer_id, :blank_check_id)
    end
end
