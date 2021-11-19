class AddPhotoReferenceToTags < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :tags, :pictures, column: :photo_id
    add_index :tags, :photo_id
    change_column_null :tags, :photo_id, false
  end
end
