class AddMemberToAuctionItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :auction_items, :member, null: false, foreign_key: true
  end
end
