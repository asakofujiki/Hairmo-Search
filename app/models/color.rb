class Color < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :color_type
end
