class OperativesController < ApplicationController
  before_action :set_operative, only: [:show, :edit, :update, :destroy]

  # GET /operatives
  # GET /operatives.json
  def index
    @operatives = current_user.operatives
  end

  # GET /operatives/1
  # GET /operatives/1.json
  def show
  end

  # GET /operatives/new
  def new
    @user = User.find params[:user_id]
    @operative = @user.operatives.new
  end

  # GET /operatives/1/edit
  def edit
  end

  # POST /operatives
  # POST /operatives.json
  def create
    @user = User.find params[:user_id]
    @operative = @user.operatives.new(operative_params)
    @operative.generate_operative(params[:user_id])

    if @operative.save
      redirect_to user_url(@user), notice: 'Operative was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /operatives/1
  # PATCH/PUT /operatives/1.json
  def update
    @user = User.find(@operative.user_id) 
    @operative.assign_job(params[:job_id]) 
    
    respond_to do |format|
      if @operative.update(operative_params)
        format.html { redirect_to user_url(@user), notice: 'Operative was successfully updated.' }
        format.json { render :show, status: :ok, location: user_url(@user) }
      else
        format.html { render :edit }
        format.json { render json: @operative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operatives/1
  # DELETE /operatives/1.json
  def destroy
    @operative.destroy
      redirect_to user_url(@operative.user), notice: '--REDACTED-- was successfully purged from system.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operative
      @operative = Operative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operative_params
      #params.permit(:user_id, :name, :status, :skill, :job_id)
      params.require(:operative).permit(:user_id, :name, :status, :skill, :job_id)
    end
end
