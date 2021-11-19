class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email_address, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :pictures,
             foreign_key: :photo_owner

  has_many   :follow_requests,
             resource: FollowerResource,
             foreign_key: :receiver_id

  has_many   :followers,
             foreign_key: :follower_id

  has_many   :tags

  has_many   :likes

  has_many   :comments,
             foreign_key: :commenter

  # Indirect associations

  has_many :receivers, resource: UserResource do
    assign_each do |user, users|
      users.select do |u|
        u.id.in?(user.receivers.map(&:id))
      end
    end
  end

  has_many :follower, resource: UserResource do
    assign_each do |user, users|
      users.select do |u|
        u.id.in?(user.follower.map(&:id))
      end
    end
  end

  many_to_many :photos,
               resource: PictureResource

  many_to_many :picture2,
               resource: PictureResource

  many_to_many :picture


  filter :receiver_id, :integer do
    eq do |scope, value|
      scope.eager_load(:receivers).where(:followers => {:receiver_id => value})
    end
  end

  filter :follower_id, :integer do
    eq do |scope, value|
      scope.eager_load(:follower).where(:followers => {:follower_id => value})
    end
  end
end
