require 'json'
require 'pry'

# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Product.destroy_all
# List.destroy_all
# Review.destroy_all

# normal = JSON.parse(File.read('db/splashglam_normal.json'))
# combination = JSON.parse(File.read('db/splashglam_combi.json'))
oily = JSON.parse(File.read('db/splashglam_oily.json'))

# normal["products_normal"].each do |product|
#     product["tag"] = "normal"
#     Product.create(
#         name: product["name"],
#         url: product["url"],
#         brand: product["brand"],
#         brand_url: product["brand_url"],
#         price: product["price"],
#         image_url: product["image"],
#         description: product["description"],
#         tag: product["tag"]
#     )
# end

# combination["products_combination"].each do |product|
#     product["tag"] = "combination"
#     if !Product.find_by(name: product["name"])
#         Product.create(
#             name: product["name"],
#             url: product["url"],
#             brand: product["brand"],
#             brand_url: product["brand_url"],
#             price: product["price"],
#             image_url: product["image"],
#             description: product["description"],
#             tag: product["tag"]
#         )
#     else
#         product = Product.find_by(name: product["name"])
#         # binding.pry
#         Product.update(tag: product.tag + ", combination")
#     end
# end

oily["products_oily"].each do |product|
    product["tag"] = "oily"
    Product.create(
        name: product["name"],
        url: product["url"],
        brand: product["brand"],
        brand_url: product["brand_url"],
        price: product["price"],
        image_url: product["image"],
        description: product["description"],
        tag: product["tag"]
    )

end

# ellaine = User.create({name: "ellaine", username: "ellainet", skin_type: "oily", age: 28})
# kim = User.create({name: "kim", username: "nnhk23", skin_type: "combination", age: 21})


# List.create({title: "firstList", product: Product.first, user_id: 1})
# Review.create({content: "My first ever review to a product here in SplashGlam! This is to test if my relationships are working! If you read this. Yay!", user_id: 2, product: Product.first})

