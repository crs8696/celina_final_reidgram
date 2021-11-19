class FollowerResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :follower_id, :integer
  attribute :receiver_id, :integer

  # Direct associations

  # Indirect associations

end
