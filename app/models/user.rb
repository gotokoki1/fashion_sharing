class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments
  has_many :post_likes
  has_many :like_posts, through: :post_likes, source: :post
  mount_uploader :image, ImageUploader
end
