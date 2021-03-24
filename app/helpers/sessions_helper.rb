module SessionsHelper
  # Log in given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Log out current user
  def log_out
    reset_session
    @current_user = nil
  end

  # Returns the current logged-in user (if any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Returns true if user is loggen in, false otherwise
  def logged_in?
    !current_user.nil?
  end


end
