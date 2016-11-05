class MeetStateManagersController < ApplicationController
  before_action :set_meet_state_manager, only: [:show, :edit, :update, :destroy]

  # GET /meet_state_managers
  # GET /meet_state_managers.json
  def index
    @meet_state_managers = MeetStateManager.all
  end

  # GET /meet_state_managers/1
  # GET /meet_state_managers/1.json
  def show
  end

  # GET /meet_state_managers/new
  def new
    @meet_state_manager = MeetStateManager.new
  end

  # GET /meet_state_managers/1/edit
  def edit
  end

  # POST /meet_state_managers
  # POST /meet_state_managers.json
  def create
    @meet_state_manager = MeetStateManager.new(meet_state_manager_params)

    respond_to do |format|
      if @meet_state_manager.save
        format.html { redirect_to @meet_state_manager, notice: 'Meet state manager was successfully created.' }
        format.json { render :show, status: :created, location: @meet_state_manager }
      else
        format.html { render :new }
        format.json { render json: @meet_state_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meet_state_managers/1
  # PATCH/PUT /meet_state_managers/1.json
  def update
    respond_to do |format|
      if @meet_state_manager.update(meet_state_manager_params)
        format.html { redirect_to @meet_state_manager, notice: 'Meet state manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @meet_state_manager }
      else
        format.html { render :edit }
        format.json { render json: @meet_state_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meet_state_managers/1
  # DELETE /meet_state_managers/1.json
  def destroy
    @meet_state_manager.destroy
    respond_to do |format|
      format.html { redirect_to meet_state_managers_url, notice: 'Meet state manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meet_state_manager
      @meet_state_manager = MeetStateManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meet_state_manager_params
      params.require(:meet_state_manager).permit(:pocket_id, :dealer_id, :position_id, :purpose, :other, :sr_activity_id)
    end
end
