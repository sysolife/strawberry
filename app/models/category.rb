# == Schema Information
#
# Table name: categories
#
#  id            :integer          not null, primary key
#  title         :string(255)      not null
#  serial_number :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Category < ApplicationRecord
	has_and_belongs_to_many :products
end
