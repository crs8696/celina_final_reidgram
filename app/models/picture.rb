require 'open-uri'
class Picture < ApplicationRecord
  before_validation :geocode_place

  def geocode_place
    if self.place.present?
      url = "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GMAP_API_KEY']}&address=#{URI.encode(self.place)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.place_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.place_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.place_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  mount_uploader :photo, PhotoUploader

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
