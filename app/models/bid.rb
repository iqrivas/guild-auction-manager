# == Schema Information
#
# Table name: bids
#
#  id              :bigint           not null, primary key
#  amount          :integer
#  auction_item_id :bigint           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint
#  member_id       :bigint
#
class Bid < ApplicationRecord
  belongs_to :member, optional:true
  belongs_to :auction_item
  belongs_to :user

  after_create do
    ActionCable.server.broadcast("bid_#{auction_item.id}", BidsController.render(self))
  end
end
