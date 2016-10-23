class FaTargetsController < ApplicationController
  before_action :set_fa_target, only: [:show, :edit, :update, :destroy]

  # GET /fa_targets
  # GET /fa_targets.json
  def index
    @fa_targets = FaTarget.all
  end

  # GET /fa_targets/1
  # GET /fa_targets/1.json
  def show
  end

  # GET /fa_targets/new
  def new
    @fa_target = FaTarget.new
  end

  # GET /fa_targets/1/edit
  def edit
  end

  # POST /fa_targets
  # POST /fa_targets.json
  def create
    @fa_target = FaTarget.new(fa_target_params)

    respond_to do |format|
      if @fa_target.save
        format.html { redirect_to @fa_target, notice: 'Fa target was successfully created.' }
        format.json { render :show, status: :created, location: @fa_target }
      else
        format.html { render :new }
        format.json { render json: @fa_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fa_targets/1
  # PATCH/PUT /fa_targets/1.json
  def update
    respond_to do |format|
      if @fa_target.update(fa_target_params)
        format.html { redirect_to @fa_target, notice: 'Fa target was successfully updated.' }
        format.json { render :show, status: :ok, location: @fa_target }
      else
        format.html { render :edit }
        format.json { render json: @fa_target.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fa_targets/1
  # DELETE /fa_targets/1.json
  def destroy
    @fa_target.destroy
    respond_to do |format|
      format.html { redirect_to fa_targets_url, notice: 'Fa target was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fa_target
      @fa_target = FaTarget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fa_target_params
      params.require(:fa_target).permit(:field_assistant_id, :target_id, :village_number, :start_date, :end_date, :total_month, :sample_number, :demo_number, :farmer_number, :prescription_number)
    end
end
