# == Schema Information
#
# Table name: auction_items
#
#  id             :bigint           not null, primary key
#  opening_bid    :integer
#  sold_for       :integer
#  payment_status :integer          default("Pending")
#  is_bundle      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  auction_id     :bigint           not null
#  item_id        :bigint           not null
#  user_id        :bigint
#
require "test_helper"

class AuctionItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
