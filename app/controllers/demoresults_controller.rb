class DemoresultsController < ApplicationController
  before_action :set_demoresult, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :input_user, only: [:new,:edit, :update,:destroy]

  # GET /demoresults
  # GET /demoresults.json
  def index
    @demoresults = Demoresult.paginate(page: params[:page], per_page: 20)

  end

  # GET /demoresults/1
  # GET /demoresults/1.json
  def show

  end

  # GET /demoresults/new
  def new
    @demoresult = Demoresult.new
	@demoresult.resultphotos.build
  end

  # GET /demoresults/1/edit
  def edit
  end

  # POST /demoresults
  # POST /demoresults.json
  def create
    @demoresult = Demoresult.new(demoresult_params)

    respond_to do |format|
      if @demoresult.save
        format.html { redirect_to @demoresult, notice: 'Demoresult was successfully created.' }
        format.json { render :show, status: :created, location: @demoresult }
      else
        format.html { render :new }
        format.json { render json: @demoresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demoresults/1
  # PATCH/PUT /demoresults/1.json
  def update
    respond_to do |format|
      if @demoresult.update(demoresult_params)
        format.html { redirect_to @demoresult, notice: 'Demoresult was successfully updated.' }
        format.json { render :show, status: :ok, location: @demoresult }
      else
        format.html { render :edit }
        format.json { render json: @demoresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demoresults/1
  # DELETE /demoresults/1.json
  def destroy
    @demoresult.destroy
    respond_to do |format|
      format.html { redirect_to demoresults_url, notice: 'Demoresult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def input_user
    redirect_to root_url, notice: 'Your account does not have access to this resource' unless current_user.access?

  end
    # Use callbacks to share common setup or constraints between actions.
    def set_demoresult
      @demoresult = Demoresult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demoresult_params
            params.require(:demoresult).permit(:state_id, :amid, :srid, :pocket_id, :faid, :demostatus, :photo, :demoid, :state_id, :position_id, :user_id, :manager_id, resultphotos_attributes: [:id, :photo, :done,:avatar, :_destroy],
                                         )
    end
end
