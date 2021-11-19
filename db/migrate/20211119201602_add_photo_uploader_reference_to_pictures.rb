class AddPhotoUploaderReferenceToPictures < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :pictures, :users, column: :photo_owner
    add_index :pictures, :photo_owner
    change_column_null :pictures, :photo_owner, false
  end
end
