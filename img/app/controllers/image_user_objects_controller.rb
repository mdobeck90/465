class ImageUserObjectsController < ApplicationController
  before_action :set_image_user_object, only: [:show, :edit, :update, :destroy]

  # GET /image_user_objects
  # GET /image_user_objects.json
  def index
    @image_user_objects = ImageUserObject.all
  end

  # GET /image_user_objects/1
  # GET /image_user_objects/1.json
  def show
  end

  # GET /image_user_objects/new
  def new
    @image_user_object = ImageUserObject.new
  end

  # GET /image_user_objects/1/edit
  def edit
  end

  # POST /image_user_objects
  # POST /image_user_objects.json
  def create
    @image_user_object = ImageUserObject.new(image_user_object_params)

    respond_to do |format|
      if @image_user_object.save
        format.html { redirect_to @image_user_object, notice: 'Image user object was successfully created.' }
        format.json { render :show, status: :created, location: @image_user_object }
      else
        format.html { render :new }
        format.json { render json: @image_user_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_user_objects/1
  # PATCH/PUT /image_user_objects/1.json
  def update
    respond_to do |format|
      if @image_user_object.update(image_user_object_params)
        format.html { redirect_to @image_user_object, notice: 'Image user object was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_user_object }
      else
        format.html { render :edit }
        format.json { render json: @image_user_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_user_objects/1
  # DELETE /image_user_objects/1.json
  def destroy
    @image_user_object.destroy
    respond_to do |format|
      format.html { redirect_to image_user_objects_url, notice: 'Image user object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_user_object
      @image_user_object = ImageUserObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_user_object_params
      params.require(:image_user_object).permit(:image_id, :user_id)
    end
end
