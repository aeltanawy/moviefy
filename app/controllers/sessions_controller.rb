class SessionsController < ApplicationController
  skip_before_action :logged_in?
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to root_path
    else
      # Error message
      flash[:notice] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
