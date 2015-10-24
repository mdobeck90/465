class ReferencesController < ApplicationController
  before_action :set_reference, only: [:show, :edit, :update, :destroy]

  # GET /topics/:topid_id/references
  def index
    @topic = Topic.find params[:topic_id]
    @references = @topic.references
  end

  # GET /topics/:topic_id/references/new
  # Find the :topic_id to input a FK into the new reference
  def new
    @topic = Topic.find params[:topic_id] 
    @reference = @topic.references.new
  end

  # GET /references/1/edit
  def edit
  end

  # POST /references
  def create
    @topic = Topic.find params[:topic_id]  
    @reference = @topic.references.new(reference_params)
    if @reference.save
      redirect_to topic_ratings_url(@topic), notice: 'Reference was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /references/1
  def update
    if @reference.update(reference_params)
      redirect_to topic_references_url(@reference.topic), notice: 'Reference was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /references/1
  def destroy
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to topic_references_url(@reference.topic), notice: 'Reference was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:url, :description)
    end
end
