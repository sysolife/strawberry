class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.integer :serial_number, default: 0, null: false
      t.timestamps
    end
  end
end
