class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # private
  # def current_cart
  #   if session[:user_cart_id]
  #     usercart = UserCart.find_by(id: session[:user_cart_id])
  #     if usercart.present?
  #       @current_cart = usercart
  #     else
  #       session[:user_cart_id] = nil
  #     end
  #   end

  #   if session[:user_cart_id] == nil
  #     @current_cart = UserCart.create
  #     session[:user_cart_id] = @current_cart.id
  #   end
  # end
end
