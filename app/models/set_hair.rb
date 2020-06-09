class SetHair < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :set_type

	enum set_type_id: {japanese: 1, western: 2}
end
