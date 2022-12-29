require 'rails_helper'

RSpec.describe User, type: :model do
    describe "User Properties" do
        it "verifies that users has first_name, last_name, email,phone number, password digest, agreement, github
        linkedin, cv link, profile image, cover image, country, bio, skills, profession, company id, user type,
        company name, company website" do
            expect(User.new.attributes).to include("first_name", "last_name", "email", "phone_number", "password_digest", 
            "agreement", "github", "linkedin", "cv_link", "profile_img", "cover_img", "country", "bio", "skills", "company_id", 
            "user_type", "company_name", "company_website")
            
        end
    end
end