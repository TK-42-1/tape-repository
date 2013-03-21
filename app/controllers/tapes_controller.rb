class TapesController < ApplicationController
  def index
    @tapes = Tape.find(:all, order: "number")
  end

  def new
    @title = "Add Tape"
    @tape = Tape.new
  end
  
  def show
    @tape = Tape.find(params[:id])   
    @title = "#{@tape.number} #{@tape.description}"
    @code = "tapes/#{@tape.number}.png"
  end
  
  def edit
    @tape = Tape.find(params[:id])
    @title = "Edit Tape #{@tape.number}"
  end
  
  def create
    @tape = Tape.new(params[:tape])
    if @tape.save
      redirect_to @tape, :flash => {:success => "New tape record created" }
    else
      render 'new'
    end
  end
  
  def update
    @tape = Tape.find(params[:id])
    if @tape.update_attributes(params[:tape])
      redirect_to @tape
    else
      redirect_to @tape, :flash => {:failure => "Unable to save edit" }
    end
  end
  
  def destroy
    @tape = Tape.find(params[:id])
    @tape.destroy
    redirect_to root_path
  end
end