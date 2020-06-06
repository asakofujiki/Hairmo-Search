class Cut < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :cut_type
end
