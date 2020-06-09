class RenameModelNameColumnToModels < ActiveRecord::Migration[5.2]
  def change
  	rename_column :models, :model_name, :hairmodel_name
  end
end
