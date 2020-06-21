class NotificationsController < ApplicationController
	def index
		if hairdresser_signed_in?
			@notifications = current_hairdresser.hairdresser_notifications
			@notifications.where(checked: false).each do |notificaton|
				notificaton.update_attributes(checked: true)
			end
		elsif model_signed_in?
			@notifications = current_model.model_notifications
			@notifications.where(checked: false).each do |notificaton|
				notificaton.update_attributes(checked: true)
			end
		end
	end
end
