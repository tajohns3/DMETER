class FieldAssistantsController < ApplicationController
  before_action :set_field_assistant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /field_assistants
  # GET /field_assistants.json
  def index
    @field_assistants = FieldAssistant.where(position_status: false).paginate(page: params[:page], per_page: 10)
  end

  # GET /field_assistants/1
  # GET /field_assistants/1.json
  def show
    @field_assistants = FaTarget.all
    @field_assistants = Crop.all
    @field_assistants = Target.all
    state = @field_assistant.state_id
    @state_manager = User.where(state_id: state)

  end

  # GET /field_assistants/new
  def new
    @field_assistant = FieldAssistant.new
    target =@field_assistant.fa_targets.build
  end

  # GET /field_assistants/1/edit
  def edit
  end

  # POST /field_assistants
  # POST /field_assistants.json
  def create
    @field_assistant = FieldAssistant.new(field_assistant_params)

    respond_to do |format|
      if @field_assistant.save
        format.html { redirect_to @field_assistant, notice: 'Field assistant was successfully created.' }
        format.json { render :show, status: :created, location: @field_assistant }
              else
        format.html { render :new }
        format.json { render json: @field_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_assistants/1
  # PATCH/PUT /field_assistants/1.json
  def update
    respond_to do |format|
      if @field_assistant.update(field_assistant_params)
        format.html { redirect_to @field_assistant, notice: 'Field assistant was successfully updated.' }
        format.json { render :show, status: :ok, location: @field_assistant }
      else
        format.html { render :edit }
        format.json { render json: @field_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_assistants/1
  # DELETE /field_assistants/1.json
  def destroy
    @field_assistant.destroy
    respond_to do |format|
      format.html { redirect_to field_assistants_url, notice: 'Field assistant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?

  end
    # Use callbacks to share common setup or constraints between actions.
    def set_field_assistant
      @field_assistant = FieldAssistant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def field_assistant_params
      params.require(:field_assistant).permit(:state_id, :user_id, :pocket_id, :first_name, :surname, :address, :taluka, :district, :pin_code, :contact_number, :experience, :dealer_id, :form, :yes, :fa_number, fa_targets_attributes:[:id, :field_assistant_id, :target_id, :crop_id,:dealer_id, :start_date, :end_date, :total_month, :sample_number, :demo_number, :farmer_number, :prescription_number, :village_number,  :_destroy])
    end
end
