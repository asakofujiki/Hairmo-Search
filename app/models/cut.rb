class Cut < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :cut_type

	enum cut_type_id: {ショート: 1, ボブ: 2, ミディアム: 3, ロング: 4}
end
