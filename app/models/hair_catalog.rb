class HairCatalog < ApplicationRecord
	attachment :catalog_image
	validates :catalog_image, presence: true
	validates :treatment_contents, presence: true, length: {maximum: 200}

	has_many :catalog_tags, dependent: :destroy
	has_many :tags, :through => :catalog_tags
	belongs_to :hairdresser
end