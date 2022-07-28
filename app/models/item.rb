# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  quality    :string
#  category   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord

    has_many :auction_items

end
