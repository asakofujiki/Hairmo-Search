class CreateCuts < ActiveRecord::Migration[5.2]
  def change
    create_table :cuts do |t|
      t.integer :hairdresser_id
      t.integer :cut_type_id

      t.timestamps
    end
  end
end
