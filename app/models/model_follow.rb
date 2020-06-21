class ModelFollow < ApplicationRecord
	belongs_to :model
	belongs_to :hairdresser

	def create_hairdresser_follow!(current_model, hairdresser_id)
    temp = HairdresserNotification.where(["model_id = ? and hairdresser_id = ? and action = ?", current_model.id, hairdresser_id, 'follow'])
    if temp.blank?
      notification = current_model.hairdresser_notifications.new(
        hairdresser_id: hairdresser_id,
        action: 'follow'
      )
      notification.save if notification.valid?
    end
  end
end
