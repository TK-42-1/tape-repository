class Location < ActiveRecord::Base
  attr_accessible :location
  has_many :tapes
end
