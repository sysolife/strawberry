class Admin::CategoryController < ApplicationController
	before_filter :find_category


	def index

	end

	

	private
	def find_category
		@category = Category.find(params[:id]) if params[:id]
	end

	def category_params
		params.permit(:category, :title, :serial_number)
	end

end