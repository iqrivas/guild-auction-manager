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
require "test_helper"

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
