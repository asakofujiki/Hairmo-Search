class CreateCutTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :cut_types do |t|
      t.string :cut_name

      t.timestamps
    end
  end
end
