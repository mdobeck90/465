class ImageObjectsController < ApplicationController
  before_action :set_image_object, only: [:show, :edit, :update, :destroy]

  # GET /image_objects
  # GET /image_objects.json
  def index
    @image_objects = ImageObject.all
  end

  # GET /image_objects/1
  # GET /image_objects/1.json
  def show
  end

  # GET /image_objects/new
  def new
    @image_object = ImageObject.new
  end

  # GET /image_objects/1/edit
  def edit
  end

  # POST /image_objects
  # POST /image_objects.json
  def create
    @image_object = ImageObject.new(image_object_params)

    respond_to do |format|
      if @image_object.save
        format.html { redirect_to @image_object, notice: 'Image object was successfully created.' }
        format.json { render :show, status: :created, location: @image_object }
      else
        format.html { render :new }
        format.json { render json: @image_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_objects/1
  # PATCH/PUT /image_objects/1.json
  def update
    respond_to do |format|
      if @image_object.update(image_object_params)
        format.html { redirect_to @image_object, notice: 'Image object was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_object }
      else
        format.html { render :edit }
        format.json { render json: @image_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_objects/1
  # DELETE /image_objects/1.json
  def destroy
    @image_object.destroy
    respond_to do |format|
      format.html { redirect_to image_objects_url, notice: 'Image object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_object
      @image_object = ImageObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_object_params
      params.require(:image_object).permit(:filename, :private, :user_id)
    end
end
