class ChangeDataAreaToHairdressers < ActiveRecord::Migration[5.2]
  def change
  	change_column :hairdressers, :area, :integer
  end
end
