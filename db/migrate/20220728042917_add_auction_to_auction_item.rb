class AddAuctionToAuctionItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :auction_items, :auction, null: false, foreign_key: true
  end
end
