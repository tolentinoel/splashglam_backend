class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :brand, :brand_url, :price, :image_url, :description, :tag, :reviews

  def reviews
    self.object.reviews.map do |each_rvw|
      {
        content: each_rvw.content,
        reviewer_id: each_rvw.user.id,
        reviewer: each_rvw.user.username,
        reviewer_skin_type: each_rvw.user.skin_type
      }
    end
  end
end
