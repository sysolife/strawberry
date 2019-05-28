class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :mobile
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
