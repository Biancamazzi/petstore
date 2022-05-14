class Service < ApplicationRecord
  has_one :user, through: :user_carts
  belongs_to :user_cart
  has_one_attached :photo
  validates :name, :description, presence: true
  monetize :price_cents
end
