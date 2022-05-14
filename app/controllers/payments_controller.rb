class PaymentsController < ApplicationController
  def new
<<<<<<< HEAD
    @user_cart = current_user.user_carts.where(state: 'pending').find(params[:user_cart_id])
=======
    @user_cart = current_user.orders.where(state: 'pending').find(params[:service_id])
>>>>>>> b0cdbd4cd80205ad494d7db1c02b5b292a24e305
  end
end
