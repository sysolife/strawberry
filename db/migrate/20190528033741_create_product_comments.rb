class CreateProductComments < ActiveRecord::Migration[5.0]
  def change
    create_table :product_comments do |t|
      t.string :content,null: false
      t.belongs_to :product,  index: true
      t.belongs_to :customer,  index: true
      t.timestamps
    end
  end
end
