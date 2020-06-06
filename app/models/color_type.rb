class ColorType < ApplicationRecord
	has_many :colors, dependent: :destroy
end
