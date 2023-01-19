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

   
    # validates :password, presence: true
    validates :email, presence: true, uniqueness: true
    # validate :password_requirements_are_met
    #validate :validate_user_type

    # def password_requirements_are_met
    #   rules = {
    #     " must contain at least one lowercase letter"  => /[a-z]+/,
    #     " must contain at least one uppercase letter"  => /[A-Z]+/,
    #     " must contain at least one digit"             => /\d+/,
    #     " must contain at least one special character" => /[^A-Za-z0-9]+/
    #   }
      
    #   rules.each do |message, regex|
    #     unless :password.match( regex )
    #       errors.add( :password, message ) 
    #     end
    #   end
    # end

    def validate_user_type
      if !["admin", "user"].include?(user_type)
        errors.add(:user_type, "is not included in the list")
      end
    end
end

    