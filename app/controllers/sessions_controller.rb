class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user_path
    else
      render :new and return
    end
  end

  def destroy
    log_out
    redirect_to ''
  end
end
