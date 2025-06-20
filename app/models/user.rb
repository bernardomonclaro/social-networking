class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :phone, :avatar, presence: true

  validates :phone, format: {
  with: /\A\(?\d{2}\)?\s?9\d{4}-?\d{4}\z/,
  message: "inválido. Use o formato (11) 91234-5678"
}

  has_one_attached :avatar
  has_many :posts
  has_many :comments

  has_many :followers_subscriptions, foreign_key: :followed_id, class_name: 'Subscription'
  has_many :followers, through: :followers_subscriptions, source: :followed_by

  has_many :following_subscriptions, foreign_key: :followed_by_id, class_name: 'Subscription'
  has_many :following, through: :following_subscriptions, source: :followed

  scope :potential_to_follow, ->(user) { where.not(id: user.following.pluck(:id)).where.not(id: user.id) }
end
