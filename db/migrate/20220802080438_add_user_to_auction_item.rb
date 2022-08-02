class AddUserToAuctionItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :auction_items, :user, foreign_key: true
    add_reference :bids, :user, foreign_key: true
  end
end
