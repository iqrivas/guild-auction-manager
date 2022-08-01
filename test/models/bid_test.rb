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
require "test_helper"

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
