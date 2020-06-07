class SetHair < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :set_type

	enum set_type_id: {和装: 1, 洋装: 2}
end
