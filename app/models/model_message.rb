class ModelMessage < ApplicationRecord
	belongs_to :model
	belongs_to :room

	validates :message, presence: true
end
