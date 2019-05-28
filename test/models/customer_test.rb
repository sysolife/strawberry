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

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
