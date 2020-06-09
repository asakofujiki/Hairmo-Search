class Cut < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :cut_type

	enum cut_type_id: {short: 1, bob: 2, medium: 3, long: 4}
end
