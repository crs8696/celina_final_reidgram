class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :description
      t.string :photo
      t.integer :photo_owner
      t.string :place

      t.timestamps
    end
  end
end
