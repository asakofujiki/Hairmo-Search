class HairdresserNotification < ApplicationRecord
	default_scope -> { order(created_at: :desc) }
	belongs_to :hair_catalog, optional: true
	
	belongs_to :model, optional: :true
	belongs_to :hairdresser, optional: :true
end
