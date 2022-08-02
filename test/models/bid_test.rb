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
#
require "test_helper"

class BidTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
