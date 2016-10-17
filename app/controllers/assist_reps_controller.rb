class AssistRepsController < ApplicationController
  before_action :set_assist_rep, only: [:show, :edit, :update, :destroy]

  # GET /assist_reps
  # GET /assist_reps.json
  def index
    @assist_reps = AssistRep.all
  end

  # GET /assist_reps/1
  # GET /assist_reps/1.json
  def show
  end

  # GET /assist_reps/new
  def new
    @assist_rep = AssistRep.new
  end

  # GET /assist_reps/1/edit
  def edit
  end

  # POST /assist_reps
  # POST /assist_reps.json
  def create
    @assist_rep = AssistRep.new(assist_rep_params)

    respond_to do |format|
      if @assist_rep.save
        format.html { redirect_to @assist_rep, notice: 'Assist rep was successfully created.' }
        format.json { render :show, status: :created, location: @assist_rep }
      else
        format.html { render :new }
        format.json { render json: @assist_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assist_reps/1
  # PATCH/PUT /assist_reps/1.json
  def update
    respond_to do |format|
      if @assist_rep.update(assist_rep_params)
        format.html { redirect_to @assist_rep, notice: 'Assist rep was successfully updated.' }
        format.json { render :show, status: :ok, location: @assist_rep }
      else
        format.html { render :edit }
        format.json { render json: @assist_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assist_reps/1
  # DELETE /assist_reps/1.json
  def destroy
    @assist_rep.destroy
    respond_to do |format|
      format.html { redirect_to assist_reps_url, notice: 'Assist rep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assist_rep
      @assist_rep = AssistRep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assist_rep_params
      params.require(:assist_rep).permit(:fa_activity_id, :assist, :comment)
    end
end
