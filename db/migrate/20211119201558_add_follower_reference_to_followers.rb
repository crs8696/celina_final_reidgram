class AddFollowerReferenceToFollowers < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :followers, :users, column: :follower_id
    add_index :followers, :follower_id
    change_column_null :followers, :follower_id, false
  end
end
