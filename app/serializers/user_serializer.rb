class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :skin_type, :age, :lists

  def lists
      self.object.lists.map do |each_list|
      {
        id: each_list.id,
        title: each_list.title,
        products: each_list.products.map do |product|
          {
            name: product.name,
            brand: product.brand,
            url: product.url,
            image: product.image_url
          }
        end
      }
      end

  end


end

