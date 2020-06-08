class CreateCatalogTags < ActiveRecord::Migration[5.2]
  def change
    create_table :catalog_tags do |t|
      t.integer :hair_catalog_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
