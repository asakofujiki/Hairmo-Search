class Perm < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :perm_type

	enum perm_type_id: {curl: 1, straight: 2}
end
