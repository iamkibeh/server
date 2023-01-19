class Post < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  def likes_count
    likes.count
  end
end
