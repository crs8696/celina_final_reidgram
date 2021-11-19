class Follower < ApplicationRecord
  # Direct associations

  belongs_to :receiver,
             :class_name => "User"

  belongs_to :follower,
             :class_name => "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    follower.to_s
  end

end
