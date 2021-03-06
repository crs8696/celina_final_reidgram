class FollowerResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :follower_id, :integer
  attribute :receiver_id, :integer

  # Direct associations

  belongs_to :receiver,
             resource: UserResource

  belongs_to :follower,
             resource: UserResource

  # Indirect associations
end
