class User < ApplicationRecord
  # Direct associations

  has_many   :pictures,
             :foreign_key => "photo_owner",
             :dependent => :destroy

  has_many   :follow_requests,
             :class_name => "Follower",
             :foreign_key => "receiver_id",
             :dependent => :destroy

  has_many   :followers,
             :foreign_key => "follower_id",
             :dependent => :destroy

  has_many   :tags,
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commenter",
             :dependent => :destroy

  # Indirect associations

  has_many   :picture2,
             :through => :tags,
             :source => :photo

  has_many   :picture,
             :through => :comments,
             :source => :photo

  # Validations

  # Scopes

  def to_s
    email_address
  end

end
