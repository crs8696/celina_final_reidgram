class PictureResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :description, :string
  attribute :photo, :string
  attribute :photo_owner, :integer
  attribute :place, :string

  # Direct associations

  has_many   :comments,
             foreign_key: :photo_id

  has_many   :tags,
             foreign_key: :photo_id

  has_many   :likes,
             foreign_key: :photo_id

  belongs_to :photo_uploader,
             resource: UserResource,
             foreign_key: :photo_owner

  # Indirect associations

end
