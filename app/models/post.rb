class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes
  has_one_attached :image

  validates :title, :explanation, :image, presence: true
end
