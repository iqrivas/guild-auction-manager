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
require "test_helper"

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
