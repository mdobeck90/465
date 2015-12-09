class UsersController < ApplicationController
  layout "new_user", only: [:new, :create]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_filter :authorize, :except => [:new, :create]



  # GET /users
  # GET /users.json
  def index
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @operatives = current_user.operatives 
    @new_operative = current_user.operatives.new
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    for i in 1..4
      @new_operative = @user.operatives.new
      @new_operative.generate_operative
    end

    if @user.save
      #item_params = {:user_id => @user.id}
      #@item = Item.new(item_params)
      #@item.save
      redirect_to @user, notice: 'Account was successfully created.'
    else
      render :new 
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Transaction was successfull.'
    else
      redirect_to @user, notice: 'WARNING: Transaction could not be completed.'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :password, :password_confirmation, :firewall, :active_firewall, :honeypot, :active_honeypot)
    end
end
