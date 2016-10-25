class PostDemonstrationsController < ApplicationController
  before_action :set_post_demonstration, only: [:show, :edit, :update, :destroy]

  # GET /post_demonstrations
  # GET /post_demonstrations.json
  def index
    @post_demonstrations = PostDemonstration.all
  end

  # GET /post_demonstrations/1
  # GET /post_demonstrations/1.json
  def show
  end

  # GET /post_demonstrations/new
  def new
    @post_demonstration = PostDemonstration.new
  end

  # GET /post_demonstrations/1/edit
  def edit
  end

  # POST /post_demonstrations
  # POST /post_demonstrations.json
  def create
    @post_demonstration = PostDemonstration.new(post_demonstration_params)

    respond_to do |format|
      if @post_demonstration.save
        format.html { redirect_to @post_demonstration, notice: 'Post demonstration was successfully created.' }
        format.json { render :show, status: :created, location: @post_demonstration }
      else
        format.html { render :new }
        format.json { render json: @post_demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_demonstrations/1
  # PATCH/PUT /post_demonstrations/1.json
  def update
    respond_to do |format|
      if @post_demonstration.update(post_demonstration_params)
        format.html { redirect_to @post_demonstration, notice: 'Post demonstration was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_demonstration }
      else
        format.html { render :edit }
        format.json { render json: @post_demonstration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_demonstrations/1
  # DELETE /post_demonstrations/1.json
  def destroy
    @post_demonstration.destroy
    respond_to do |format|
      format.html { redirect_to post_demonstrations_url, notice: 'Post demonstration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_demonstration
      @post_demonstration = PostDemonstration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_demonstration_params
      params.require(:post_demonstration).permit(:demonstration_id, :observation, :contacrsr, :comment, :demo_photo,:fa_activity_id)
    end
end
