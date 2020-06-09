class RenameModelImageIdColumnToModels < ActiveRecord::Migration[5.2]
  def change
  	rename_column :models, :model_image_id, :hairmodel_image_id
  end
end
