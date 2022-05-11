class CreateUserCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_carts do |t|
      t.text :status
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
