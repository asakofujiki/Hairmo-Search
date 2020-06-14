class CreateHairdresserMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :hairdresser_messages do |t|
      t.integer :room_id
      t.integer :hairdresser_id
      t.text :message

      t.timestamps
    end
  end
end
