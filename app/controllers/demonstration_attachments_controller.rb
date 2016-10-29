class DemonstrationAttachmentsController < ApplicationController
  before_action :set_demonstration_attachment, only: [:show, :edit, :update, :destroy]

  # GET /demonstration_attachments
  # GET /demonstration_attachments.json
  def index
    @demonstration_attachments = DemonstrationAttachment.all
  end

  # GET /demonstration_attachments/1
  # GET /demonstration_attachments/1.json
  def show
  end

  # GET /demonstration_attachments/new
  def new
    @demonstration_attachment = DemonstrationAttachment.new
  end

  # GET /demonstration_attachments/1/edit
  def edit
  end

  # POST /demonstration_attachments
  # POST /demonstration_attachments.json
  def create
    @demonstration_attachment = DemonstrationAttachment.new(demonstration_attachment_params)

    respond_to do |format|
      if @demonstration_attachment.save
        format.html { redirect_to @demonstration_attachment, notice: 'Demonstration attachment was successfully created.' }
        format.json { render :show, status: :created, location: @demonstration_attachment }
      else
        format.html { render :new }
        format.json { render json: @demonstration_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demonstration_attachments/1
  # PATCH/PUT /demonstration_attachments/1.json
  def update
    respond_to do |format|
      if @demonstration_attachment.update(demonstration_attachment_params)
        format.html { redirect_to @demonstration_attachment, notice: 'Demonstration attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @demonstration_attachment }
      else
        format.html { render :edit }
        format.json { render json: @demonstration_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demonstration_attachments/1
  # DELETE /demonstration_attachments/1.json
  def destroy
    @demonstration_attachment.destroy
    respond_to do |format|
      format.html { redirect_to demonstration_attachments_url, notice: 'Demonstration attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demonstration_attachment
      @demonstration_attachment = DemonstrationAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demonstration_attachment_params
      params.require(:demonstration_attachment).permit(:demonstration_id, :avatar)
    end
end
