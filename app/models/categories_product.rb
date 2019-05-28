# == Schema Information
#
# Table name: categories_products
#
#  category_id :integer          not null
#  product_id  :integer          not null
#
# Indexes
#
#  index_categories_products_on_category_id_and_product_id  (category_id,product_id)
#  index_categories_products_on_product_id_and_category_id  (product_id,category_id)
#

class CategoriesProduct < ApplicationRecord
end
