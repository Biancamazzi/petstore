class Service < ApplicationRecord
  # belongs_to :user, though: user_carts
  # has_many :user_carts
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
