module MoviefyHelper

  def construct_movie_name(name)
    name.gsub!('_', ' ')
    return name.titleize
  end

end
