class UsersSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :agreement, :github, :linkedin, :cv_link, :country, :bio, :skills, :profession, :user_type, :company_name, :company_website, :image_url, :twitter_url, :user_location

  def image_url
    object.avatar.url
  end

end
