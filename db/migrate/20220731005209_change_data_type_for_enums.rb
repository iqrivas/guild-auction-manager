class ChangeDataTypeForEnums < ActiveRecord::Migration[7.0]
  def change
    change_column(:auctions, :status, :integer, default: 0)
    change_column(:auction_items, :payment_status, :integer, default: 0)
    change_column(:items, :quality, :integer, default: 0)
    change_column(:items, :category, :integer, default: 0)
    change_column(:members, :rank, :integer, default: 0)
    change_column(:members, :status, :integer, default: 0)
  end
end
