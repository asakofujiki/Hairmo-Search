class Color < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :color_type

	enum color_type_id: {おしゃれ染め: 1, 黒染め: 2, ブリーチ: 3, グレーカラー: 4}
end
