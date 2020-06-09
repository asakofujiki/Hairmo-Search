class RenameModelCommentColumnToModels < ActiveRecord::Migration[5.2]
  def change
  	rename_column :models, :model_comment, :hairmodel_comment
  end
end
