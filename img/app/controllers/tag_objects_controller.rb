class TagObjectsController < ApplicationController
  before_action :set_tag_object, only: [:show, :edit, :update, :destroy]

  # GET /tag_objects
  # GET /tag_objects.json
  def index
    @tag_objects = TagObject.all
  end

  # GET /tag_objects/1
  # GET /tag_objects/1.json
  def show
  end

  # GET /tag_objects/new
  def new
    @tag_object = TagObject.new
  end

  # GET /tag_objects/1/edit
  def edit
  end

  # POST /tag_objects
  # POST /tag_objects.json
  def create
    @tag_object = TagObject.new(tag_object_params)

    respond_to do |format|
      if @tag_object.save
        format.html { redirect_to @tag_object, notice: 'Tag object was successfully created.' }
        format.json { render :show, status: :created, location: @tag_object }
      else
        format.html { render :new }
        format.json { render json: @tag_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_objects/1
  # PATCH/PUT /tag_objects/1.json
  def update
    respond_to do |format|
      if @tag_object.update(tag_object_params)
        format.html { redirect_to @tag_object, notice: 'Tag object was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_object }
      else
        format.html { render :edit }
        format.json { render json: @tag_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_objects/1
  # DELETE /tag_objects/1.json
  def destroy
    @tag_object.destroy
    respond_to do |format|
      format.html { redirect_to tag_objects_url, notice: 'Tag object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_object
      @tag_object = TagObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_object_params
      params.require(:tag_object).permit(:str, :image_id)
    end
end
