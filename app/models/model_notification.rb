class ModelNotification < ApplicationRecord
	default_scope -> { order(created_at: :desc) }

	belongs_to :hairdresser, optional: :true
	belongs_to :model, optional: :true
end
