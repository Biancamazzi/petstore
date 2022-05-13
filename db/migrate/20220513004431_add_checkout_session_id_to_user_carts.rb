class AddCheckoutSessionIdToUserCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :user_carts, :checkout_session_id, :string
  end
end
