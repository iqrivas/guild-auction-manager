class RemoveMemberId < ActiveRecord::Migration[7.0]
  def change
    remove_column :auction_items, :member_id
    remove_column :bids, :member_id
  end
end
