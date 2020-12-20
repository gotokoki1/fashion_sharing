class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :title, :explanation, :image, presence: true
end
