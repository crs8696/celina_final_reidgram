class Tag < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             class_name: "Picture"

  belongs_to :user

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
