class RenameModelGenderColumnToModels < ActiveRecord::Migration[5.2]
  def change
  	rename_column :models, :model_gender, :hairmodel_gender
  end
end
