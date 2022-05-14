class UserCartController < ApplicationController
  def show
    @user_cart = @current_cart
  end

  def new
    @service = Service.find(params[:service_id])
    @user_cart = UserCart.new
  end
  # new provavelmente sera descartado por nao ter utilidade

  def create
    service = Service.find(params[:service_id])
    user_cart  = User_cart.create!(service: service, amount: service.price, state: :status, user: current_user)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: service.name,
        images: [service.photo_url],
        amount: service.price_cents,
        currency: 'brl',
        quantity: 1
      }],
      success_url: user_cart_url(user_cart),
      cancel_url: user_cart_url(user_cart)
    )
    user_cart.update(checkout_session_id: session.id)
    redirect_to new_user_cart_payment_path(user_cart)
  end



  private

  def usercart_params
    params.require(:user_cart).permit(:status)
  end
end

# apos criar carrinho, passar o user e service params
# ao criar, passar os params no metodo create na criacao do usercart!
# criar um usercart params!!!
# **rever rotas new e cogitar um destroy para usercart(necessario)

