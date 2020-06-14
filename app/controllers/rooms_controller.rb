class RoomsController < ApplicationController

  def create
  	if hairdresser_signed_in?
  		@room = Room.new(hairdresser_id: current_hairdresser.id, model_id: params[:model_id])
  		@room.save
  		redirect_to "/rooms/#{@room.id}"
  	else model_signed_in?
  		@room = Room.new(hairdresser_id: params[:hairdresser_id], model_id: current_model.id)
  		@room.save
  		redirect_to "/rooms/#{@room.id}"
  	end
  end

  def show
  	@room = Room.find(params[:id])
  	if hairdresser_signed_in?
  		@message = HairdresserMessage.new
  	else model_signed_in?
  		@message = ModelMessage.new
  	end
  end

end
