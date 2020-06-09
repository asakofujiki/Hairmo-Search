class Color < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :color_type

	enum color_type_id: {fashion: 1, black: 2, bleach: 3, gray: 4}
end
