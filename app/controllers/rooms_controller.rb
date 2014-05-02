class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.create(params[:room])
    redirect_to room_path(@room.id)
  end

end
