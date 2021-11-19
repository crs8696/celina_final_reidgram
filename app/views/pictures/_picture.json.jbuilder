json.extract! picture, :id, :description, :photo, :photo_owner, :place,
              :created_at, :updated_at
json.url picture_url(picture, format: :json)
