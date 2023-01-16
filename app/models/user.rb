class User < ApplicationRecord
    has_secure_password
    has_secure_password
    has_many :likes
    has_many :posts, through: :likes

    has_many :likes
    has_many :posts, through: :likes

    has_secure_password
    has_many :comments, dependent: :destroy
    has_many :post, through: :comments
    has_one_attached :avatar

   
    validates :password, format: { with: /\A[\w-]+\z/, message: "your format requirements" }
    validates :email, presence: true, uniqueness: true
    validate :password_requirements_are_met

    def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
      
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
      end
end
    