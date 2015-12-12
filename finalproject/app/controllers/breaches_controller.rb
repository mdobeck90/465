class BreachesController < ApplicationController
  include UsersHelper
  before_action :set_breach, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, :except => [:index, :show, :new, :create]

  # GET /breaches
  # GET /breaches.json
  def index
    @rand_user = User.all.sample
    unless @rand_user.id != current_user.id
      @rand_user = User.all.sample
    end
    @breaches = Breach.where(user_id: current_user.id)
    enemy_failed_breaches = Breach.where(target_id: current_user.id)
    @enemy_list = Array.new
    enemy_failed_breaches.each do |breach|
      @enemy_list.push(User.find(breach.user_id))
    end
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
    @breach.user_id = current_user.id
    @breach.target_id = User.find_by_name(breach_params[:target_id]).id

    if @breach.target_id == current_user.id
      redirect_to breaches_url, notice: "Nope." and return
    end
    
    outcome = @breach.calculate_breach_outcome
    target = User.find(@breach.target_id)

    #breached but honeytrap gives lower amount of money and alerts the target
    if outcome[:honeytrap] == true && outcome[:repel] == true
      target.active_honeypot - 1
      @breach.breached = true
      @breach.cash_stolen = User.find(@breach.target_id).cash * 0.2
      @breach.z_stolen = 0
      @breach.honeypot_stolen = 0
      @breach.firewall_stolen = 0
      @breach.o_contract_stolen = 0
    #no breach
    elsif outcome[:honeytrap] == false && outcome[:repel] == true
      @breach.breached = false
      target.active_firewall - 1
      target.active_honeypot - 1
      @breach.cash_stolen = 0
      @breach.z_stolen = 0
      @breach.honeypot_stolen = 0
      @breach.firewall_stolen = 0
      @breach.o_contract_stolen = 0
    #plain breach
    else
      @breach.breached = true
      @breach.cash_stolen = rand(0..User.find(@breach.target_id).cash) * 0.8
      @breach.z_stolen = rand(0..User.find(@breach.target_id).zeroday)
      @breach.honeypot_stolen = rand(0..User.find(@breach.target_id).honeypot)
      @breach.firewall_stolen = rand(0..User.find(@breach.target_id).firewall)
      @breach.o_contract_stolen = rand(0..User.find(@breach.target_id).o_contract)
    end

    respond_to do |format|
      if @breach.save
        current_user.check_for_breaches
        format.html { redirect_to @breach, notice: 'Breach completed.' }
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
