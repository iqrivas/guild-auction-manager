# == Schema Information
#
# Table name: bids
#
#  id              :integer          not null, primary key
#  message         :string
#  status          :string
#  bid_amount      :integer
#  member_id       :integer          not null
#  auction_item_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Bid < ApplicationRecord
  belongs_to :member
  belongs_to :auction_item

  after_create do
    ActionCable.server.broadcast("bid_#{auction_item.id}", BidsController.render(self))
  end
end
