# == Schema Information
#
# Table name: shopping_carts
#
#  id             :integer          not null, primary key
#  product_number :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  customer_id    :integer
#  product_id     :integer
#
# Indexes
#
#  index_shopping_carts_on_customer_id  (customer_id)
#  index_shopping_carts_on_product_id   (product_id)
#

class ShoppingCart < ApplicationRecord
	belongs_to :customer
	belongs_to :product
end
