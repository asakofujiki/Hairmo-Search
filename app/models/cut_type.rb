class CutType < ApplicationRecord
	has_many :cuts, dependent: :destroy
end
