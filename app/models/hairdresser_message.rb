class HairdresserMessage < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :room

	validates :message, presence: true

	def create_model_message!(current_hairdresser, model_id)
      notification = current_hairdresser.model_notifications.new(
        model_id: model_id,
        action: 'message'
      )
      notification.save if notification.valid?
  	end
end
