class AddAmountToUserCart < ActiveRecord::Migration[6.1]
  def change
    add_monetize :user_carts, :amount, currency: { present: false }
  end
end
