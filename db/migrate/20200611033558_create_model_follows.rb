class CreateModelFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :model_follows do |t|
      t.integer :model_id
      t.integer :hairdresser_id

      t.timestamps
    end
  end
end
