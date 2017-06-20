class Movie < ActiveRecord::Base
    
  ## 
  # @return all ratings
  def self.get_ratings
    Movie.select(:rating).distinct
  end
end
