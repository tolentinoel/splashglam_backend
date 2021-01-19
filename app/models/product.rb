class Product < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    has_many :list_products
    has_many :lists, through: :list_products
end
