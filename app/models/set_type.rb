class SetType < ApplicationRecord
	has_many :set_hairs, dependent: :destroy
end
