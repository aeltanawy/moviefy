class TheaterMapController < ApplicationController
  def map
    @theaters = Theater.all
    @markers = []
    @theaters.each do |theater|
      @markers << [theater.city, theater.state, theater.latitude, theater.longitude, theater.theater_name, theater.zipcode]
    end
  end
end