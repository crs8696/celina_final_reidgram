class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email_address, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :tags

  has_many   :likes

  has_many   :comments,
             foreign_key: :commenter

  # Indirect associations

end
