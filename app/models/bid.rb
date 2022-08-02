# == Schema Information
#
# Table name: bids
#
#  id              :bigint           not null, primary key
#  message         :string
#  status          :string
#  amount          :integer
#  member_id       :bigint           not null
#  auction_item_id :bigint           not null
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
