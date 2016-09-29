class SessionsController < ApplicationController
  def new
  end
  def create
  user = User.authenticate(params[:user_name], params[:password])
  user_agent = request.user_agent
  if user
    LoginLog.create(user_ip: get_ip, user_agent: user_agent, log_in_time: Time.now, user_name: user.user_name)
    session[:user_id] = user.id
    user.log_in_time = Time.now
    user.save
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid user_name or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
end
