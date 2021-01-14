class User < ApplicationRecord
    has_many: lists
    has_many: products, through: list
    has_secure_password
    validates :username, uniqueness: true
    validates :name, length: {minimum:2}, message:"Name must be minimum of 2 characters."
end
