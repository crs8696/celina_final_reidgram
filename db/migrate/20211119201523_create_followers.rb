class CreateFollowers < ActiveRecord::Migration[6.0]
  def change
    create_table :followers do |t|
      t.integer :follower_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
