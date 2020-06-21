class HairCatalog < ApplicationRecord
	attachment :catalog_image
	validates :catalog_image, presence: true
	validates :treatment_contents, presence: true, length: {maximum: 200}

	has_many :catalog_tags, dependent: :destroy
	has_many :tags, :through => :catalog_tags
	belongs_to :hairdresser

	has_many :favorites, dependent: :destroy
	def favorited_by?(model)
		favorites.where(model_id: model.id).exists?
	end

	has_many :hairdresser_notifications, dependent: :destroy
	def create_hairdresser_notification_favorite!(current_model)
		temp = HairdresserNotification.where(["model_id = ? and hairdresser_id = ? and hair_catalog_id = ? and action = ?", current_model.id, hairdresser_id, id, 'favorite'])
		if temp.blank?
			notification = current_model.hairdresser_notifications.new(
				hair_catalog_id: id,
				hairdresser_id: hairdresser_id,
				action: 'favorite'
			)
			notification.save if notification.valid?
		end
	end
	
end
