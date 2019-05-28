# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  picture      :string(255)
#  price        :float(24)        not null
#  status       :integer          default("waiting"), not null
#  stock_number :integer          default(0), not null
#  title        :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'carrierwave/orm/activerecord'

class Product < ApplicationRecord

	enum status: { waiting: 0, actived: 1, deleted: 2 }, _suffix: true
	mount_uploader :picture, ProductPictureUploader

	has_many :shopping_carts # 购物车
	has_many :product_comments, dependent: :destroy # 商品评价
	has_many :customer, through: :shopping_carts # 购物车
	
	has_and_belongs_to_many :categories # 商品种类
end
