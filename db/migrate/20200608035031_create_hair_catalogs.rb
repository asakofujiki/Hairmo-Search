class CreateHairCatalogs < ActiveRecord::Migration[5.2]
  def change
    create_table :hair_catalogs do |t|
      t.integer :hairdresser_id
      t.string :cotalog_image_id
      t.text :treatment_contents

      t.timestamps
    end
  end
end
