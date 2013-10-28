class Rating < ActiveRecord::Base
  attr_accessible :movie_idbmID, :value

    belongs_to :movie

end
