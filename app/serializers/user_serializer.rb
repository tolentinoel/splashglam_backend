class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :skin_type, :age, :lists
 
  def lists
    self.object.lists.map do |each_list|
      {
        title: each_list.title,
        products:
          [
            product_id: each_list.product.id,
            product_name: each_list.product.name,
            product_image: each_list.product.image_url,
            product_brand: each_list.product.brand
          ]
      }
    end

  end


end

