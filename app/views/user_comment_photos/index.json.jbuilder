json.array!(@user_comment_photos) do |user_comment_photo|
  json.extract! user_comment_photo, :id, :photo, :body, :user_id
  json.url user_comment_photo_url(user_comment_photo, format: :json)
end
