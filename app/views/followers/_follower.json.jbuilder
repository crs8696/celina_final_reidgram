json.extract! follower, :id, :follower_id, :receiver_id, :created_at,
              :updated_at
json.url follower_url(follower, format: :json)
