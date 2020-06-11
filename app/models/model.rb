class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :hairmodel_name, presence: true
  attachment :hairmodel_image
  enum hairmodel_gender: {woman: 0, man: 1}
  enum age: {teenage: 0, twenties: 1, thirties: 2, forties: 3, over_fifty: 4}
  enum hair_length: {short: 0, bob: 1, medium: 2, long: 3}
  enum black_history: {nothing: 0, three_minths: 1, six_months: 2, one_year: 3}, _suffix: true
  enum bleach_history: {nothing: 0, three_minths: 1, six_months: 2, one_year: 3}, _suffix: true
  enum straight_history: {nothing: 0, three_minths: 1, six_months: 2, one_year: 3}, _suffix: true
  validates :hairmodel_comment, length: {maximum: 200}

  has_many :favorites, dependent: :destroy

  has_many :model_follows
  has_many :hairdresser_follows

  def followed_by?(hairdresser)
    model_follows.find_by(hairdresser_id: hairdresser.id).present?
  end
end
