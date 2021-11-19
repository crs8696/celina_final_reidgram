class AddUserReferenceToTags < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :tags, :users
    add_index :tags, :user_id
    change_column_null :tags, :user_id, false
  end
end
