class MoviefyController < ApplicationController
  skip_before_action :logged_in?
  include MoviefyHelper
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def index
  end
end
