class Comment < ApplicationRecord
  # Direct associations

  belongs_to :photo,
             :class_name => "Picture"

  belongs_to :comment_giver,
             :class_name => "User",
             :foreign_key => "commenter"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    comment_content
  end

end
