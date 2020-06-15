class Room < ApplicationRecord
	belongs_to :hairdresser
	belongs_to :model
	has_many :hairdresser_messages, dependent: :destroy
	has_many :model_messages, dependent: :destroy

	def all_messages(room)
		# 美容師が投稿したメッセージとヘアモが投稿したメッセージをがっちゃんこ
		# 投稿した順でソート
		messages = []
		messages << room.hairdresser_messages
		messages << room.model_messages
		# [message1, message2]
		messages.flatten.sort_by { |message| message.created_at }
	end

end
