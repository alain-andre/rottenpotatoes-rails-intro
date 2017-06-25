class Movie < ActiveRecord::Base
    
  ## 
  # @return all ratings
  def self.get_ratings
    Movie.select(:rating).distinct.map(&:rating)
  end
  
  ##
  # @param {hash} params Request parameters
  # @return all movies filtered by rating
  def self.get_all params
    if params[:ratings] != nil 
      Movie.where(:rating => params[:ratings].keys).order params[:sort_by]
    else
      Movie.all.order params[:sort_by]
    end
  end
end
