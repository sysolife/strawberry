class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price, null: false
      t.integer :stock_number, default: 0, null: false
      t.integer :status, default: 0, null: false
      t.timestamps
    end
  end
end
