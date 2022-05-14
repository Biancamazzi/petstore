class PaymentsController < ApplicationController
  def new
    @user_cart = current_user.user_carts.where(state: 'pending').find(params[:user_cart_id])
  end
end
