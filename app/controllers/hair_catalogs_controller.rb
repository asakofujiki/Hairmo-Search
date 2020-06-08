class HairCatalogsController < ApplicationController
  def new
    @haircatalog = HairCatalog.new
    @tags = Tag.all
  end

  def create
    @haircatalog = HairCatalog.new(haircatalog_params)
    @hairdresser = current_hairdresser
    @haircatalog.hairdresser_id = current_hairdresser.id
    @haircatalog.save
    redirect_to hairdresser_path(@hairdresser)
  end

  def show
    @haircatalog = HairCatalog.find(params[:id])
  end

  def edit
    @haircatalog = HairCatalog.find(params[:id])
    @tags = Tag.all
  end

  def update
    @haircatalog = HairCatalog.find(params[:id])
    @hairdresser = current_hairdresser
    @haircatalog.update(haircatalog_params)
    redirect_to hairdresser_path(@hairdresser)
  end

  def destroy
    @haircatalog = HairCatalog.find(params[:id])
    @hairdresser = current_hairdresser
    @haircatalog.destroy
    redirect_to hairdresser_path(@hairdresser)
  end

  private
  def haircatalog_params
    params.require(:hair_catalog).permit(:hairdresser_id, :catalog_image, :treatment_contents, tag_ids: [],)
  end
end
