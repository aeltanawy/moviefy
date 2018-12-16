class SearchController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
  
  def movie
  end

  def crew
  end

  def theater
  end
end
