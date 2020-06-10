class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :model_id
      t.integer :hair_catalog_id

      t.timestamps
    end
  end
end
