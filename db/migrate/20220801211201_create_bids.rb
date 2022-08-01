class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids do |t|
      t.string :message
      t.string :status
      t.integer :bid_amount
      t.references :member, null: false, foreign_key: true
      t.references :auction_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
