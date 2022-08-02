class RemoveUnusedFields < ActiveRecord::Migration[7.0]
  def change
    remove_column :bids, :message
    remove_column :bids, :status
  end
end
