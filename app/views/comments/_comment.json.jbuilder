json.extract! comment, :id, :content, :user_id, :post, :created_at, :updated_at
json.url comment_url(comment, format: :json)
