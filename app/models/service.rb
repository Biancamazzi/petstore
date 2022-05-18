class Service < ApplicationRecord
  has_many :user, through: :user_cart
  has_many :user_carts
  validates :name, :description, presence: true
  monetize :price_cents
end
