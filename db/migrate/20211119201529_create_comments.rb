class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.integer :commenter
      t.integer :photo_id

      t.timestamps
    end
  end
end
