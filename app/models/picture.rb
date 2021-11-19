class Picture < ApplicationRecord
  # Direct associations

  belongs_to :photo_uploader,
             :class_name => "User",
             :foreign_key => "photo_owner"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    description
  end

end
