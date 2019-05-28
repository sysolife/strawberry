# == Schema Information
#
# Table name: customers
#
#  id         :integer          not null, primary key
#  mobile     :string(255)
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Customer < ApplicationRecord
	
	has_many :shopping_carts
	has_many :products, through: :shopping_carts
	has_many :product_comments
end
