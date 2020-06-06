class CreatePermTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :perm_types do |t|
      t.string :perm_name

      t.timestamps
    end
  end
end
