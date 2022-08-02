class ChangeDataTypeForEnums < ActiveRecord::Migration[7.0]
  def change
    change_column :auctions, :status, :integer, using: 'status::integer', default: 0
    change_column :auction_items, :payment_status, :integer, using: 'payment_status::integer',default: 0
    change_column :items, :quality, :integer, using: 'quality::integer', default: 0
    change_column :items, :category, :integer, using: 'category::integer', default: 0
    change_column :members, :rank, :integer, using: 'rank::integer', default: 0
    change_column :members, :status, :integer, using: 'status::integer', default: 0
  end
end
