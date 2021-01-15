class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :reviewer, :product

  def product
    {
      id: self.object.product.id,
      name: self.object.product.name,
      brand: self.object.product.brand,
      image: self.object.product.image_url
    }
  end

  def reviewer
    {
      id: self.object.user_id,
      username: self.object.user.username
    }
  end
end
