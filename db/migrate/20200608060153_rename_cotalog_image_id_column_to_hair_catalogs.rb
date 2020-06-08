class RenameCotalogImageIdColumnToHairCatalogs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hair_catalogs, :cotalog_image_id, :catalog_image_id
  end
end
