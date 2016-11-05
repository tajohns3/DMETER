class MeetFAsController < ApplicationController
  before_action :set_meet_fa, only: [:show, :edit, :update, :destroy]

  # GET /meet_fas
  # GET /meet_fas.json
  def index
    @meet_fas = MeetFa.all
  end

  # GET /meet_fas/1
  # GET /meet_fas/1.json
  def show
  end

  # GET /meet_fas/new
  def new
    @meet_fa = MeetFa.new
  end

  # GET /meet_fas/1/edit
  def edit
  end

  # POST /meet_fas
  # POST /meet_fas.json
  def create
    @meet_fa = MeetFa.new(meet_fa_params)

    respond_to do |format|
      if @meet_fa.save
        format.html { redirect_to @meet_fa, notice: 'Meet fa was successfully created.' }
        format.json { render :show, status: :created, location: @meet_fa }
      else
        format.html { render :new }
        format.json { render json: @meet_fa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meet_fas/1
  # PATCH/PUT /meet_fas/1.json
  def update
    respond_to do |format|
      if @meet_fa.update(meet_fa_params)
        format.html { redirect_to @meet_fa, notice: 'Meet fa was successfully updated.' }
        format.json { render :show, status: :ok, location: @meet_fa }
      else
        format.html { render :edit }
        format.json { render json: @meet_fa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meet_fas/1
  # DELETE /meet_fas/1.json
  def destroy
    @meet_fa.destroy
    respond_to do |format|
      format.html { redirect_to meet_fas_url, notice: 'Meet fa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meet_fa
      @meet_fa = MeetFa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meet_fa_params
      params.require(:meet_fa).permit(:sr_activity_id, :purpose)
    end
end
