class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def index
    @user_agent = request.user_agent
    @ip = get_ip
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name, :password, :password_confirmation)
  end
end
