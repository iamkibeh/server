class PostsSerializer < ActiveModel::Serializer
  attributes :id, :

  def image_url
    object.image.url
  end
end
