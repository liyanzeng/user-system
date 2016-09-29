class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  require "socket"

  def get_ip
    ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
    ip.ip_address if ip
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
