module API
  module V1
    class UserLogsController < ApplicationController
      before_action :authenticate

      def index
        user_name = AccessToken.select("user_name").where(token: params[:access_token])
        logs = LoginLog.where(user_name: user_name).order("created_at desc").limit(10)
        render json: logs, status: 200
      end


      protected

      def authenticate
        authenticate_token || render_unauthorized
      end

      def authenticate_token
        access_token =  params[:access_token]
        if access_token.present?
          token = AccessToken.where("token = ? and expire_in > ? ", access_token, Time.now)
          if token.present?
            true
          else
            false
          end
        else
          false
        end
      end

      def render_unauthorized
        self.headers['WWW-Authenticate'] = 'Token realm="Application"'
        render json: 'Bad credentials', status: 401
      end

    end
  end
end
