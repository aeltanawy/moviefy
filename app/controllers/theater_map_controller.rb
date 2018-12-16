class TheaterMapController < ApplicationController
  skip_before_action :logged_in?
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def map
    @theaters = Theater.all
    @markers = []
    @theaters.each do |theater|
      @markers << [theater.city, theater.state, theater.latitude, theater.longitude, theater.theater_name, theater.zipcode]
    end
  end
end
