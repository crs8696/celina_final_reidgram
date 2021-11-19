class AddCommentGiverReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :users, column: :commenter
    add_index :comments, :commenter
    change_column_null :comments, :commenter, false
  end
end
