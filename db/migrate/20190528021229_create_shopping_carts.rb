class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :product_number
      t.belongs_to :customer, index: true
      t.belongs_to :product,  index: true
      t.timestamps
    end
  end
end
