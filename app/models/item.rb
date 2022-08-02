# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string
#  quality     :integer          default("Gold")
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer          not null
#
class Item < ApplicationRecord
    belongs_to :category

    has_many :auction_item

    enum quality: [:Gold, :Purple, :Blue, :Green, :White]
end
