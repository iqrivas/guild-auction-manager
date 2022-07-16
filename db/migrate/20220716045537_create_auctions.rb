class CreateAuctions < ActiveRecord::Migration[7.0]
  def change
    create_table :auctions do |t|
      t.string :title
      t.date :date
      t.string :status
      t.integer :amount_collected

      t.timestamps
    end
  end
end
