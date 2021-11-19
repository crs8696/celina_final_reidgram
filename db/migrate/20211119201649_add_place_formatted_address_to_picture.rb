class AddPlaceFormattedAddressToPicture < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :place_formatted_address, :string
  end
end
