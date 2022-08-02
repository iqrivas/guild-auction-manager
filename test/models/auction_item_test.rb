# == Schema Information
#
# Table name: auction_items
#
#  id             :integer          not null, primary key
#  opening_bid    :integer
#  sold_for       :integer
#  payment_status :integer          default("Pending")
#  is_bundle      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  auction_id     :integer          not null
#  item_id        :integer          not null
#  member_id      :integer
#
require "test_helper"

class AuctionItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
