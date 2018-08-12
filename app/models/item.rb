# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  type       :string
#  size       :string
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Item < ApplicationRecord
	self.inheritance_column = nil
end
