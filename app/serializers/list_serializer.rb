class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :products

  def list_user
    {
      list_user_id: self.object.user.id,
      list_user_username: self.object.user.username
    }
  end

  def products
    if !!self.object.product 
      return [
          {
            product_id: self.object.product.id,
            product_name: self.object.product.name,
            product_brand: self.object.product.brand,
            product_image: self.object.product.image_url
          }
        ]
    end
  end
end
