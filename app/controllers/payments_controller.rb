class PaymentsController < ApplicationController
  def new
    @user_cart = current_user.orders.where(state: 'pending').find(params[:service_id])
  end
end
