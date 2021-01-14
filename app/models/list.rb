class List < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :title, presence: true
end
