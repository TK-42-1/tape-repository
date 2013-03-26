class Tape < ActiveRecord::Base
  attr_accessible :description, :number
  
  validates :number, :description, :presence => true
  validates :number, :uniqueness => true

end
