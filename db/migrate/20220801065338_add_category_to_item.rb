class AddCategoryToItem < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :category, :integer
    add_reference :items, :category, null: false, foreign_key: true
  end
end
