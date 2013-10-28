class Movie < ActiveRecord::Base
  attr_accessible :idbmID, :title

  has_many :ratings
  
end
