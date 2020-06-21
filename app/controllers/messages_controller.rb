class MessagesController < ApplicationController
  def create
  	@room = Room.find(params[:room_id])
  	if hairdresser_signed_in?
  		message = HairdresserMessage.new(hairdresser_message_params)
  		message.hairdresser_id = current_hairdresser.id
  		message.room_id = @room.id
  		message.save
      message.create_model_message!(current_hairdresser, @room.model_id)
  	else model_signed_in?
  		message = ModelMessage.new(model_message_params)
  		message.model_id = current_model.id
  		message.room_id = @room.id
  		message.save
      message.create_hairdresser_message!(current_model, @room.hairdresser_id)
  	end
  end

  private
  def model_message_params
  	params.require(:model_message).permit(:message)
  end

  def hairdresser_message_params
  	params.require(:hairdresser_message).permit(:message)
  end

end
