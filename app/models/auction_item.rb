# == Schema Information
#
# Table name: auction_items
#
#  id             :integer          not null, primary key
#  opening_bid    :integer
#  sold_for       :integer
#  payment_status :string
#  is_bundle      :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class AuctionItem < ApplicationRecord
end
