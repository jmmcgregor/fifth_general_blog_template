json.extract! blog_photo, :id, :image_data, :created_at, :updated_at
json.url blog_photo_url(blog_photo, format: :json)
if blog_photo.image.attached?
  json.image_url rails_blob_url(blog_photo.image)
end
