class Tape < ActiveRecord::Base
  attr_accessible :description, :number
  
  validates :number, :description, :presence => true

end
