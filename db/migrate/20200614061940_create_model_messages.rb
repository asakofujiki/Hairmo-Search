class CreateModelMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :model_messages do |t|
      t.integer :room_id
      t.integer :model_id
      t.text :message

      t.timestamps
    end
  end
end
