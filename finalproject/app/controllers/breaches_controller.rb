class BreachesController < ApplicationController
  before_action :set_breach, only: [:show, :edit, :update, :destroy]

  # GET /breaches
  # GET /breaches.json
  def index
    @breaches = Breach.where(user_id: current_user.id)
  end

  # GET /breaches/1
  # GET /breaches/1.json
  def show
  end

  # GET /breaches/new
  def new
    @breach = Breach.new
  end

  # GET /breaches/1/edit
  def edit
  end

  # POST /breaches
  # POST /breaches.json
  def create
    @breach = Breach.new(breach_params)

    respond_to do |format|
      if @breach.save
        format.html { redirect_to @breach, notice: 'Breach was successfully created.' }
        format.json { render :show, status: :created, location: @breach }
      else
        format.html { render :new }
        format.json { render json: @breach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /breaches/1
  # PATCH/PUT /breaches/1.json
  def update
    respond_to do |format|
      if @breach.update(breach_params)
        format.html { redirect_to @breach, notice: 'Breach was successfully updated.' }
        format.json { render :show, status: :ok, location: @breach }
      else
        format.html { render :edit }
        format.json { render json: @breach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /breaches/1
  # DELETE /breaches/1.json
  def destroy
    @breach.destroy
    respond_to do |format|
      format.html { redirect_to breaches_url, notice: 'Breach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breach
      @breach = Breach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breach_params
      params.require(:breach).permit(:user_id, :integer, :target_id, :integer)
    end
end
