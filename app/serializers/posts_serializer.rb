class PostsSerializer < ActiveModel::Serializer
  attributes :id, :post_title, :post_description, :image_url, :post_like, :post_comment, :post_category, :post_type, :company_id, :user_id, :image_url

  def image_url
    object.image.url
  end
end
