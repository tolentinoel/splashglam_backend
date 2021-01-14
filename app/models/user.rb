class User < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :products, through: :lists
    # has_secure_password
    validates :username, uniqueness: true
    validates :name, presence: true
end
