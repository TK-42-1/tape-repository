class Tape < ActiveRecord::Base
  attr_accessible :description, :number, :edited
  has_paper_trail :skip => [:edited]
  
  validates :number, :description, :presence => true
  validates :number, :uniqueness => true

end
