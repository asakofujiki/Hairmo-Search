class CreateSetHairs < ActiveRecord::Migration[5.2]
  def change
    create_table :set_hairs do |t|
      t.integer :hairdresser_id
      t.integer :set_type_id

      t.timestamps
    end
  end
end
