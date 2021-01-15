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

ellaine = User.create({name: "ellaine", username: "ellainet", skin_type: "oily", age: 28})
kim = User.create({name: "kim", username: "nnhk23", skin_type: "combination", age: 21})

# product1 = Product.create({
#     name: "Moisture Boost Gel To Water Morning Cleanser",
#     url: "https://sokoglam.com/collections/oily/products/tonymoly-moisture-boost-gel-to-water-morning-cleanser",
#     brand: "TONY MOLY",
#     brand_url: "https://sokoglam.com/collections/tony-moly",
#     price: "$13.50",
#     image_url: "https://cdn.shopify.com/s/files/1/0249/1218/products/1.8SokoGlamPDP-TonyMolyMoistureBoostGelToWaterCleanser_180ml__Package_860x.jpg?v=1610510465",
#     description: "Made with gentle, naturally-derived surfactants for use on even the most sensitive skin, this clinically tested, low pH cleanser transforms from a light gel texture to water as you massage it in. After using, skin will feel hydrated, soothed and properly cleansed. Contains 5 types of centella asiatica extracts, a panthenol and ceramide complex, as well as AHA, BHA and PHAs. Hydrates skin while gently removing dirt and dead skin cells for a soothing cleanse - a perfect way to begin the morning!"})

# product2 = Product.create({
#     name: "Deep Green Tea Serum",
#     url: "https://sokoglam.com/collections/oily/products/benton-deep-green-tea-serum",
#     brand: "BENTON",
#     brand_url: "https://sokoglam.com/collections/benton",
#     price: "$17",
#     image_url: "https://cdn.shopify.com/s/files/1/0249/1218/products/12.7SokoGlamPDP-BentonDeepGreenTeaSerum_860x.jpg?v=1607989680",
#     description: "Rebalance and revive dull, rough skin with this nourishing serum. Containing over 53% green tea extracts from BoSeong, the home of green tea farming in Korea, to gently address chapped, dehydrated and irritated skin with a calming cooling effect."
# })

List.create({title: "firstList", product: Product.first, user: ellaine})
Review.create({content: "My first ever review to a product here in SplashGlam! This is to test if my relationships are working! If you read this. Yay!", user: kim, product: Product.first})

