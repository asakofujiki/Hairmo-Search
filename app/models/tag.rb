class Tag < ApplicationRecord
	has_many :catalog_tags, dependent: :destroy
end
