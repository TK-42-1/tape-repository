class LocationsController < ApplicationController
  
  def index
    @locations = Location.find(:all)    
  end
  
  def new
    @title = "Add Storage Location"
    @location = Location.new
  end
  
  def show
    @location = Location.find(params[:id])   
    @tapes = @location.tapes
    @title = "#{@location.location}"
   end
   
   def create
     @location = Location.new(params[:location])
     if @location.save
       redirect_to locations_path
     else
       render 'new'
     end
   end
end
