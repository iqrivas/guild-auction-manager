class AddMemberToBid < ActiveRecord::Migration[7.0]
  def change
    add_reference :bids, :member, null: true, foreign_key: true
  end
end
