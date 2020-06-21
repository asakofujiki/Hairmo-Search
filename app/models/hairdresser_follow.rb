class HairdresserFollow < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :model

	def create_model_follow!(current_hairdresser, model_id)
    temp = ModelNotification.where(["hairdresser_id = ? and model_id = ? and action = ?", current_hairdresser.id, model_id, 'follow'])
    if temp.blank?
      notification = current_hairdresser.model_notifications.new(
        model_id: model_id,
        action: 'follow'
      )
      notification.save if notification.valid?
    end
  end
end
