class Hairdresser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :hairdresser_name, presence: true
  enum hairdresser_gender: {woman: 0, man: 1}
  validates :postal_code, format: {with: /\A[0-9]{7}\z/}
  validates :salon_name, presence: true
  validates :salon_address, presence: true
  enum area: {shibuya: 0, omotesandou: 1, aoyama: 2, harajyuku: 3, ginza: 4, other: 5}
  validates :hairdresser_comment, length: {maximum: 200}
  attachment :hairdresser_image

  has_many :cuts, dependent: :destroy
  has_many :cut_types, :through => :cuts

  has_many :colors, dependent: :destroy
  has_many :color_types, :through => :colors

  has_many :perms, dependent: :destroy
  has_many :perm_types, :through => :perms

  has_many :set_hairs, dependent: :destroy
  has_many :set_types, :through => :set_hairs

  has_many :hair_catalogs, dependent: :destroy

  has_many :hairdresser_follows
  has_many :model_follows

  def followed_by?(model)
    hairdresser_follows.find_by(model_id: model.id).present?
  end
end
