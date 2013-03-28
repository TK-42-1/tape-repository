class Tape < ActiveRecord::Base
  attr_accessible :description, :number
  has_paper_trail
  
  validates :number, :description, :presence => true
  validates :number, :uniqueness => true

end
