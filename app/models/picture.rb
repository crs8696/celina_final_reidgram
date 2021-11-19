class Picture < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "photo_id",
             :dependent => :destroy

  has_many   :tags,
             :foreign_key => "photo_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "photo_id",
             :dependent => :destroy

  belongs_to :photo_uploader,
             :class_name => "User",
             :foreign_key => "photo_owner"

  # Indirect associations

  has_many   :users,
             :through => :likes,
             :source => :user

  has_many   :viewers,
             :through => :tags,
             :source => :user

  has_many   :comment_givers,
             :through => :comments,
             :source => :comment_giver

  # Validations

  # Scopes

  def to_s
    description
  end

end
