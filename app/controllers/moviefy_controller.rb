class MoviefyController < ApplicationController
  skip_before_action :logged_in?
  include MoviefyHelper

  def index
  end
end
