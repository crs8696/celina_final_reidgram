class CommentResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :comment_content, :string
  attribute :commenter, :integer
  attribute :photo_id, :integer

  # Direct associations

  belongs_to :comment_giver,
             resource: UserResource,
             foreign_key: :commenter

  # Indirect associations

end
