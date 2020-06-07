class RenameHairdresserImageColumnToHairdressers < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hairdressers, :hairdresser_image, :hairdresser_image_id
  end
end
