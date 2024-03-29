class UsersController < ApplicationController
  
  def index; end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      log_in(user)
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private
  def user_params
    params.require(:user).permit(
      :first_name, 
      :last_name, 
      :username, 
      :password, 
      :password_confirmation
    )
  end

end
