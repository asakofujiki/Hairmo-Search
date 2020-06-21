class CreateModelNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :model_notifications do |t|
      t.integer :hairdresser_id, null: false
      t.integer :model_id, null: false
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
  end
end
