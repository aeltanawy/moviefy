module SessionsHelper
  #login the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  #returns the current logged-in user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  #returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  #logout the current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  #check if the logged in user is the admin
  def admin?
    if logged_in?
      current_user_rec = User.find(session[:user_id])
      if current_user_rec.admin
          return true
      else
        flash[:notice] = 'You must be the administrator to view this page!'
        return false
      end
    else
      flash[:notice] = 'You must log in to view this page!'
      return false
    end
  end
end
