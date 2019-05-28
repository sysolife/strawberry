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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
