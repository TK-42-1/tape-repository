class Tape < ActiveRecord::Base
  attr_accessible :description, :number, :edited, :location_id
  belongs_to :location
  has_paper_trail :skip => [:edited]
    
  validates :number, :description, :location_id, :presence => true
  validates :number, :uniqueness => true

end
