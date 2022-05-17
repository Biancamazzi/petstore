class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :user_cart
  has_many :orders
  has_many :services, through: :user_cart
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
