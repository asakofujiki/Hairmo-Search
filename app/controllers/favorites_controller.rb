class FavoritesController < ApplicationController
  def create
  	@haircatalog = HairCatalog.find(params[:hair_catalog_id])
  	@favorite = current_model.favorites.new(hair_catalog_id: @haircatalog.id)
  	@favorite.save
    @haircatalog.create_hairdresser_notification_favorite!(current_model)
  end

  def destroy
  	@haircatalog = HairCatalog.find(params[:hair_catalog_id])
  	@favorite = current_model.favorites.find_by(hair_catalog_id: @haircatalog.id)
  	@favorite.destroy
  end
end
