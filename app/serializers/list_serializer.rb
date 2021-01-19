class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :products

  def list_user
    {
      list_user_id: self.object.user.id,
      list_user_username: self.object.user.username
    }
  end

  def products
        self.object.list_products.map do |list_product|
          {
            id: list_product.product.id,
            name: list_product.product.name,
            url: list_product.product.url,
            brand: list_product.product.brand,
            image: list_product.product.image_url,
            price: list_product.product.price
          }
        end
  end


end
