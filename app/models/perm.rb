class Perm < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :perm_type

	enum perm_type_id: {カール: 1, 縮毛矯正: 2}
end
