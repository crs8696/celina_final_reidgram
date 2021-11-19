class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commenter",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    email_address
  end

end
