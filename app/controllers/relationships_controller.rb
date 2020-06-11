class RelationshipsController < ApplicationController
  def create
  	if hairdresser_signed_in?
  		@follow = current_hairdresser.hairdresser_follows.new(model_id: params[:model_id])
  		@follow.save
  		redirect_to model_path(params[:model_id])
  	else model_signed_in?
  		@follow = current_model.model_follows.new(hairdresser_id: params[:hairdresser_id])
  		@follow.save
  		redirect_to hairdresser_path(params[:hairdresser_id])
  	end
  end

  def destroy
  	if hairdresser_signed_in?
  		@follow = current_hairdresser.hairdresser_follows.find_by(model_id: params[:model_id])
  		@follow.destroy
  		redirect_to model_path(params[:model_id])
  	else model_signed_in?
  		@follow = current_model.model_follows.find_by(hairdresser_id: params[:hairdresser_id])
  		@follow.destroy
  		redirect_to hairdresser_path(params[:hairdresser_id])
  	end
  end
end
