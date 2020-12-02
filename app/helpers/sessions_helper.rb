module SessionsHelper

  # Logs in user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Return logged-in user, if they exist
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Check if user is logged in
  def logged_in?
    !current_user.nil?
  end
end
