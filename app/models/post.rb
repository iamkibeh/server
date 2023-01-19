class Post < ApplicationRecord
  has_many :likes
  has_many :users, through: :likes
  has_one_attached :image
end
