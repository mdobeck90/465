class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:notice] = "horray!"
    else
      flash[:error] = "Invalid Username or Password"
      render 'new'
    end
  end

  def destroy
  end
end
