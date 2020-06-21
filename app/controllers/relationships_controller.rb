class RelationshipsController < ApplicationController
  def create
  	if hairdresser_signed_in?
  		model_follow = current_hairdresser.hairdresser_follows.new(model_id: params[:model_id])
      @type = "hairdresser"
  		model_follow.save
      model_follow.create_model_follow!(current_hairdresser, params[:model_id])
      @model = model_follow.model
  	elsif model_signed_in?
  		hairdresser_follow = current_model.model_follows.new(hairdresser_id: params[:hairdresser_id])
      @type = "model"
  		hairdresser_follow.save
      hairdresser_follow.create_hairdresser_follow!(current_model, params[:hairdresser_id])
      @hairdresser = hairdresser_follow.hairdresser
  	end
  end

  def destroy
  	if hairdresser_signed_in?
  		model_follow = current_hairdresser.hairdresser_follows.find_by(model_id: params[:model_id])
      @type = "hairdresser"
  		model_follow.destroy
      @model = model_follow.model
  	elsif model_signed_in?
  		hairdresser_follow = current_model.model_follows.find_by(hairdresser_id: params[:hairdresser_id])
      @type = "model"
  		hairdresser_follow.destroy
      @hairdresser = hairdresser_follow.hairdresser
  	end
  end
end
