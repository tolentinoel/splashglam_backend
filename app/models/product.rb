class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    has_many :list_products, dependent: :destroy
    has_many :lists, through: :list_products
end
