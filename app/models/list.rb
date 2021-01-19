class List < ApplicationRecord
  belongs_to :user
  has_many :list_products, dependent: :destroy
  has_many :products, through: :list_products
  validates :title, presence: true
end
