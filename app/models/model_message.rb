class ModelMessage < ApplicationRecord
	belongs_to :model
	belongs_to :room

	validates :message, presence: true

	def create_hairdresser_message!(current_model, hairdresser_id)
      notification = current_model.hairdresser_notifications.new(
        hairdresser_id: hairdresser_id,
        action: 'message'
      )
      notification.save if notification.valid?
  	end
end
