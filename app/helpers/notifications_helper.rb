module NotificationsHelper
	def unchecked_hairdresser_notifications
		@notifications = current_hairdresser.hairdresser_notifications.where(checked: false)
	end

	def unchecked_model_notifications
		@notifications = current_model.model_notifications.where(checked: false)
	end

end
