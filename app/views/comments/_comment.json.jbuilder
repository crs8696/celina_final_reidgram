json.extract! comment, :id, :comment_content, :commenter, :photo_id,
              :created_at, :updated_at
json.url comment_url(comment, format: :json)
