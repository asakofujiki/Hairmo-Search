class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.integer :hairdresser_id
      t.integer :color_type_id

      t.timestamps
    end
  end
end
