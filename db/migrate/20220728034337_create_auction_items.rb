class CreateAuctionItems < ActiveRecord::Migration[7.0]
  def change
    create_table :auction_items do |t|
      t.integer :opening_bid
      t.integer :sold_for
      t.string :payment_status
      t.boolean :is_bundle

      t.timestamps
    end
  end
end
