class PictureResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :description, :string
  attribute :photo, :string
  attribute :photo_owner, :integer
  attribute :place, :string

  # Direct associations

  # Indirect associations

end
