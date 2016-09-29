module UsersHelper
  def log_in_time
    current_user.log_in_time.strftime("%Y-%m-%d %H:%M:%S")
  end
end
