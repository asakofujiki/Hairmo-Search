class CreateSetTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :set_types do |t|
      t.string :set_name

      t.timestamps
    end
  end
end
