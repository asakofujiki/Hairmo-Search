class ModelsController < ApplicationController
  def index
  	@models = Model.all.page(params[:page]).per(6)
    if params[:hairmodel_gender].present?
      @models = @models.where(hairmodel_gender: params[:hairmodel_gender])
    end
    if params[:age].present?
      @models = @models.where(age: params[:age])
    end
    if params[:hair_length].present?
      @models = @models.where(hair_length: params[:hair_length])
    end
    if params[:black_history].present?
      @models = @models.where(black_history: params[:black_history])
    end
    if params[:bleach_history].present?
      @models = @models.where(bleach_history: params[:bleach_history])
    end
    if params[:straight_history].present?
      @models = @models.where(straight_history: params[:straight_history])
    end
  end

  def show
  	@model = Model.find(params[:id])
    @model_image_url = "https://new-hairmosearch-resize.s3-ap-northeast-1.amazonaws.com/store/" + @image.image_id + "-thumbnail."
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
  	params.require(:model).permit(
      :hairmodel_name,
      :hairmodel_image,
      :hairmodel_gender,
      :age, :hair_length,
      :black_history,
      :bleach_history,
      :straight_history,
      :hairmodel_comment
    )
  end
end
