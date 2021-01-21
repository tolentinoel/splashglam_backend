class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :brand, :brand_url, :price, :image_url, :description, :tag, :reviews

  def reviews
    self.object.reviews.map do |each_rvw|
      {
        content: each_rvw.content,
        user: each_rvw.user.username,
        user_age: each_rvw.user.age,
        user_skin_type: each_rvw.user.skin_type
      }
    end
  end
end
