# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  quality    :integer          default("Gold")
#  category   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord

    has_many :auction_items

    enum quality: [:Gold, :Purple, :Blue, :Green, :White]
end
