class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :quality
      t.string :category

      t.timestamps
    end
  end
end
