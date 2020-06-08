class CatalogTag < ApplicationRecord
	belongs_to :hair_catalog
	belongs_to :tag

	enum tag_id: {カット:1, カラー:2, パーマ:3, セット:4}
end
