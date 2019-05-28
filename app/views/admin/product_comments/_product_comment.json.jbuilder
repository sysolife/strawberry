json.extract! product_comment, :id, :content, :created_at, :updated_at
json.url product_comment_url(product_comment, format: :json)
