class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :url
      t.string :brand
      t.string :brand_url
      t.string :price
      t.string :image_url
      t.string :description
      t.text :tag, array: true, default: []
    end
  end
end
