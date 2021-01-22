class User < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :products, through: :lists
    has_many :reviews, dependent: :destroy
    validates :username, uniqueness: true
    validates :name, presence: true
    has_secure_password

end
