class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :skin_type, :age, :lists
 
  def lists
    if !!self.object.lists
      self.object.lists.map do |each_list|
      {
        title: each_list.title,
        products:
        if !!each_list.product
          [
            id: each_list.product.id,
            name: each_list.product.name,
            image: each_list.product.image_url,
            brand: each_list.product.brand
          ]
        else
          []
        end
      }
      end
    end

  end


end

