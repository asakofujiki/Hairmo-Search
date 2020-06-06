class CreatePerms < ActiveRecord::Migration[5.2]
  def change
    create_table :perms do |t|
      t.integer :hairdresser_id
      t.integer :perm_type_id

      t.timestamps
    end
  end
end
