class Service < ApplicationRecord
  # belongs_to :user, though: user_cart
  # has_many :user_carts
  validates :name, :description, presence: true
end
