# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_14_024817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_lists_on_product_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "brand"
    t.string "brand_url"
    t.string "price"
    t.string "image_url"
    t.string "description"
    t.string "tag"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "skin_type"
    t.integer "age"
  end

  add_foreign_key "lists", "products"
  add_foreign_key "lists", "users"
  add_foreign_key "reviews", "products"
  add_foreign_key "reviews", "users"
end
