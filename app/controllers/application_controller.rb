class ApplicationController < ActionController::Base
  before_action :logged_in?
  protect_from_forgery with: :exception
  include ApplicationHelper
  include SessionsHelper
  include PurchasingsHelper
end
