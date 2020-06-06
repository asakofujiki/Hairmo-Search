class CreateColorTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :color_types do |t|
      t.string :color_name

      t.timestamps
    end
  end
end
