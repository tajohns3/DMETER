class DealersController < ApplicationController
  before_action :set_dealer, only: [:show, :edit, :update, :destroy]

  # GET /dealers
  # GET /dealers.json
  def index
    if params[:active]=='checkem'
    @dealers = Dealer.where(call: false)
    else
      @dealers = Dealer.all
      end
  end

  # GET /dealers/1
  # GET /dealers/1.json
  def show
  end

  # GET /dealers/new
  def new
    @dealer = Dealer.new
    account =@dealer.banks.build
    deal_prop =@dealer.proprietors.build
   dealer_security=@dealer.security_checks.build
    dealer_blank=@dealer.blank_checks.build
  end


  # GET /dealers/1/edit
  def edit
  end

  # POST /dealers
  # POST /dealers.json
  def create
    @dealer = Dealer.new(dealer_params)

    respond_to do |format|
      if @dealer.save
        format.html { redirect_to @dealer, notice: 'Dealer was successfully created.' }
        format.json { render :show, status: :created, location: @dealer }
      else
        format.html { render :new }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealers/1
  # PATCH/PUT /dealers/1.json
  def update
    respond_to do |format|
      if @dealer.update(dealer_params)
        format.html { redirect_to @dealer, notice: 'Dealer was successfully updated.' }
        format.json { render :show, status: :ok, location: @dealer }
      else
        format.html { render :edit }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealers/1
  # DELETE /dealers/1.json
  def destroy
    @dealer.destroy
    respond_to do |format|
      format.html { redirect_to dealers_url, notice: 'Dealer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dealer_params
      params.require(:dealer).permit(:state_id, :pocket_dat_id, :district_id, :user_id, :pocket_id, :name, :address, :atpost, :pin_code, :taluka, :district,
                                     :whaddress, :whatpost, :whpincode, :whtaluka, :whdistrict,
                                     :transportname, :transportbranch, :transportacct, :transportadd, :transportph,
                                     :fert_license, :fl_photo, :fl_issdate, :fl_expdate,
                                     :cent_stax, :cst_photo, :cst_issdate, :cst_expdate,
                                     :state_stax, :sst_photo, :sst_issdate, :sst_expdate,
                                     :vat, :vat_photo, :vat_issdate, :vat_expdate,
                                     :pancard, :pc_photo, :pc_issdate, :pc_expdate,
                                     :annturnover, :bioturnover, :custbase, :dealerreqform,:dealerphoto, :introcall, :call,
                                     proprietors_attributes:[:id, :fname, :sname, :mname, :designation, :staddress, :phnumber, :_destroy],
                                     banks_attributes: [:id, :name, :branch, :account_number, :address, :phone, :noreceive, :chnumber, :_destroy],
                                     security_checks_attributes:[:bank_name, :check_number, :bank_account, :amount,:issue_date, :status, :_destroy],
                                      blank_checks_attributes:[:bank_name, :blank_check, :bank_account, :cheque_num, :_destroy])
    end
end
