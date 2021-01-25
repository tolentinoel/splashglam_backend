require 'json'
require 'pry'

User.destroy_all
Product.destroy_all
List.destroy_all
Review.destroy_all

normal = JSON.parse(File.read('db/splashglam_normal.json'))
dry = JSON.parse(File.read('db/splashglam_dry.json'))
oily = JSON.parse(File.read('db/splashglam_oily.json'))

normal["products_normal_combi"].each do |product|
    tag = []
    Product.create(
        name: product["name"],
        url: product["url"],
        brand: product["brand"],
        brand_url: product["brand_url"],
        price: product["price"],
        image_url: product["image"],
        description: product["description"],
        tag: tag.push("normal", "combination")
    )
    
end

dry["products_dry"].each do |product|
    tag = []
    Product.create(
        name: product["name"],
        url: product["url"],
        brand: product["brand"],
        brand_url: product["brand_url"],
        price: product["price"],
        image_url: product["image"],
        description: product["description"],
        tag: tag.push("dry")
    )
end

oily["products_oily"].each do |product|
    tag = []
    Product.create(
        name: product["name"],
        url: product["url"],
        brand: product["brand"],
        brand_url: product["brand_url"],
        price: product["price"],
        image_url: product["image"],
        description: product["description"],
        tag: tag.push("oily")
    )

end

# ellaine = User.create({name: "ellaine", username: "ellainet", skin_type: "oily", age: 28})
# kim = User.create({name: "kim", username: "nnhk23", skin_type: "combination", age: 21})


# List.create({title: "firstList", product: Product.first, user_id: 1})
# Review.create({content: "My first ever review to a product here in SplashGlam! This is to test if my relationships are working! If you read this. Yay!", user_id: 2, product: Product.first})

