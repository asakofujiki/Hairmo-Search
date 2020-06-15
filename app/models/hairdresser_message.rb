class HairdresserMessage < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :room

	validates :message, presence: true
end
