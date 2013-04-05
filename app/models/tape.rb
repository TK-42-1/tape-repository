class Tape < ActiveRecord::Base
  attr_accessible :description, :number, :edited, :location_id
  belongs_to :location
  has_paper_trail :skip => [:edited]
    
  validates :number, :uniqueness => true, :presence => true
  validates :description, :presence => true
  
   

end
