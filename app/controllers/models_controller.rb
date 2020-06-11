class ModelsController < ApplicationController
  def index
  	@models = Model.all
  end

  def show
  	@model = Model.find(params[:id])
  end

  def edit
  	@model = current_model
  end

  def update
  	@model = current_model
  	@model.update(model_params)
  	redirect_to model_path(@model)
  end

  private
  def model_params
  	params.require(:model).permit(:hairmodel_name, :hairmodel_image, :hairmodel_gender, :age, :hair_length, :black_history, :bleach_history, :straight_history, :hairmodel_comment)
  end
end
