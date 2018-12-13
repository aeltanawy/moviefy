module ShowMovieHelper

  def construct_file_name(name)
    name.gsub!(' ', '_')
    return name.downcase
  end

  def adjust_movie_title(name)
    name.gsub!(/[',:]/, '')
    name.gsub!(/[-,.]/, ' ')
    return name.downcase
  end

  def replace_pip_with_comma(name)
    name.gsub!('|', ', ')
    return name
  end

end
