module API
module V1
class UsersController < ApplicationController

  def new
    user = User.authenticate(params[:user_name], params[:password])
    user_agent = request.user_agent
    if user
      access_token = AccessToken.select("token").where("expire_in > ? and user_agent = ? and user_name = ?", Time.now, user_agent, user.user_name)
      if access_token.present?
        render json: { access_token: access_token }, status: 200
      else
        token = user.generate_authentication_token
        AccessToken.create(user_name: user.user_name, user_agent: user_agent, token: token, expire_in: Time.now + 10*60 )
        LoginLog.create(user_ip: get_ip, user_agent: user_agent, log_in_time: Time.now, user_name: user.user_name)
        render json: { access_token: token }, status: 200
      end
    else
      render json: { "error" => {"code" => "482", "message" => "Password is incorrect"}}, status: 400
    end
  end

end
end
end
