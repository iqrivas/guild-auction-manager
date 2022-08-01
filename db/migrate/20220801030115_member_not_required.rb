class MemberNotRequired < ActiveRecord::Migration[7.0]
  def change
    change_column :auction_items, :member_id, :integer, null: true
  end
end
