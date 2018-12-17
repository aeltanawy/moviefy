class ApplicationController < ActionController::Base
  before_action :logged_in?
  protect_from_forgery with: :exception
  include ApplicationHelper
  include SessionsHelper
  include PurchasingsHelper

  # In case RecordNotFound
  def redirect_if_not_found
    logger.error "Attempt to access non-existent #{request.controller_class} '#{params[:id]}'."
    flash[:notice] = "The page you are trying to request doesn't exist."
    redirect_to(root_path)
  end
end
