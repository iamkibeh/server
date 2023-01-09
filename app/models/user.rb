class User < ApplicationRecord
    has_many :comments, dependent: :destroy
    has_many :post, through: :comments
end
