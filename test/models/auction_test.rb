# == Schema Information
#
# Table name: auctions
#
#  id               :bigint           not null, primary key
#  title            :string
#  date             :date
#  status           :integer          default("Draft")
#  amount_collected :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
