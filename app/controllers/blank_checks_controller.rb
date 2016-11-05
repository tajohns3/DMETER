class BlankChecksController < ApplicationController
  before_action :set_blank_check, only: [:show, :edit, :update, :destroy]

  # GET /blank_checks
  # GET /blank_checks.json
  def index
    @blank_checks = BlankCheck.all
  end

  # GET /blank_checks/1
  # GET /blank_checks/1.json
  def show
  end

  # GET /blank_checks/new
  def new
    @blank_check = BlankCheck.new
  end

  # GET /blank_checks/1/edit
  def edit
  end

  # POST /blank_checks
  # POST /blank_checks.json
  def create
    @blank_check = BlankCheck.new(blank_check_params)

    respond_to do |format|
      if @blank_check.save
        format.html { redirect_to @blank_check, notice: 'Blank check was successfully created.' }
        format.json { render :show, status: :created, location: @blank_check }
      else
        format.html { render :new }
        format.json { render json: @blank_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blank_checks/1
  # PATCH/PUT /blank_checks/1.json
  def update
    respond_to do |format|
      if @blank_check.update(blank_check_params)
        format.html { redirect_to @blank_check, notice: 'Blank check was successfully updated.' }
        format.json { render :show, status: :ok, location: @blank_check }
      else
        format.html { render :edit }
        format.json { render json: @blank_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blank_checks/1
  # DELETE /blank_checks/1.json
  def destroy
    @blank_check.destroy
    respond_to do |format|
      format.html { redirect_to blank_checks_url, notice: 'Blank check was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blank_check
      @blank_check = BlankCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blank_check_params
      params.require(:blank_check).permit(:bank_name, :blank_check, :bank_account, :cheque_num)
    end
end
