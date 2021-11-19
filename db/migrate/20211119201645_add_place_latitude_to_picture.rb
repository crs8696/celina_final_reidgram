class AddPlaceLatitudeToPicture < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :place_latitude, :float
  end
end
