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
    @service = Service.find(params[:service_id])
    @user_cart = UserCart.new(usercart_params)
    @user_cart.service = @service
    @user_cart.user = current_user
    if @user_cart.save
      redirect_to service_path(@user_cart.service)
    else
      render :new
    end
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
