class SetType < ApplicationRecord
	has_many :sets, dependent: :destroy
end
