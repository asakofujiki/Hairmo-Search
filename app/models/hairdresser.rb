class Hairdresser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :hairdresser_name, presence: true
  enum hairdresser_gender: {女性: 0, 男性: 1}
  validates :postal_code, format: {with: /\A[0-9]{7}\z/}
  validates :salon_name, presence: true
  validates :salon_address, presence: true
  enum area: {渋谷: 0, 表参道: 1, 青山: 2, 原宿: 3, 銀座: 4, その他: 5}
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
end
