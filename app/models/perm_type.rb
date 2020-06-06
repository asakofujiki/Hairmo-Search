class PermType < ApplicationRecord
	has_many :perms, dependent: :destroy
end
