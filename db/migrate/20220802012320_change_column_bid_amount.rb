class ChangeColumnBidAmount < ActiveRecord::Migration[7.0]
  def change
    rename_column :bids, :bid_amount, :amount
  end
end
