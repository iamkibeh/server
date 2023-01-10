class User < ApplicationRecord
    has_secure_password
    has_many :likes
    has_many :posts, through: :likes

    has_many :comments, dependent: :destroy
    has_many :post, through: :comments
    has_one_attached :avatar
end
    