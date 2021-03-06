# == Schema Information
#
# Table name: product_comments
#
#  id          :integer          not null, primary key
#  content     :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#  product_id  :integer
#
# Indexes
#
#  index_product_comments_on_customer_id  (customer_id)
#  index_product_comments_on_product_id   (product_id)
#

class ProductComment < ApplicationRecord
	belongs_to :product,counter_cache: true # 商品
	belongs_to :customer # 用户
end
