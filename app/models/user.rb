class User < ApplicationRecord
    has_secure_password
    has_many :comments, dependent: :destroy
    has_many :post, through: :comments
    has_one_attached :image
end
    