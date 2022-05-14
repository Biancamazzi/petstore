class UserCart < ApplicationRecord
  STATUS = ['pending', 'approved', 'denied']
  belongs_to :user
  belongs_to :service
  after_create :set_status
  # Definindo a variavel global 'STATUS' para o metodo 'set_status'
  # O metodo 'set_status' defini todos pagamentos quando criados para 'pending' por default

  def set_status
    self.status = STATUS.first
  end

  def create
  service = Service.find(params[:service_id])
  user_cart  = User_cart.create!(service: service, amount: service.price, state: 'pending', user: current_user)

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
end
