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
    @code = "https://chart.googleapis.com/chart?chs=100x100&cht=qr&chl=http://tapes.tetco.com/tapes/#{@tape.number}"
    @printcode = "https://chart.googleapis.com/chart?chs=80x80&chld=L|1&cht=qr&chl=http://tapes.tetco.com/tapes/#{@tape.number}"
  end
  
  def edit
    @tape = Tape.find(params[:id])
    @title = "Edit Tape #{@tape.number}"
  end
  
  def create
    @tape = Tape.new(params[:tape])
    if @tape.save
      redirect_to @tape
    else
      render 'new'
    end
  end
  
  def print
    @tape = Tape.find(params[:id])
    @title = "Print Label | Tape #{@tape.number}"
    @code = "https://chart.googleapis.com/chart?chs=60x60&chld=L|0&cht=qr&chl=http://tapes.tetco.com/tapes/#{@tape.number}"
    @print = true
  end
  
  def update
    @tape = Tape.find(params[:id])
    if @tape.update_attributes(params[:tape])
      redirect_to @tape
    else
      render 'edit'
    end
  end
  
  def destroy
    @tape = Tape.find(params[:id])
    @tape.destroy
    redirect_to root_path
  end
end