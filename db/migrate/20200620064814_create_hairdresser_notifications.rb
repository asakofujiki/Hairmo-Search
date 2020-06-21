class CreateHairdresserNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :hairdresser_notifications do |t|
      t.integer :model_id, null: false
      t.integer :hairdresser_id, null: false
      t.integer :hair_catalog_id
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false
      
      t.timestamps
    end
  end
end
