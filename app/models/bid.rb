# == Schema Information
#
# Table name: bids
#
#  id              :integer          not null, primary key
#  amount          :integer
#  auction_item_id :integer          not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  member_id       :integer
#
class Bid < ApplicationRecord
  belongs_to :member, optional:true
  belongs_to :auction_item
  belongs_to :user

  after_create do
    ActionCable.server.broadcast("bid_#{auction_item.id}", BidsController.render(self))
  end
end
