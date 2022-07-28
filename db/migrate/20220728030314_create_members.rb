class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :username
      t.string :rank
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
