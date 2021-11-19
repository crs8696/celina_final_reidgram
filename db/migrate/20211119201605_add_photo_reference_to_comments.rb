class AddPhotoReferenceToComments < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :comments, :pictures, column: :photo_id
    add_index :comments, :photo_id
    change_column_null :comments, :photo_id, false
  end
end
