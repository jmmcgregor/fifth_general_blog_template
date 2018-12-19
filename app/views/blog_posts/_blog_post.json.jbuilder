json.extract! blog_post, :id, :media_type, :title, :main_image, :video_upload, :body, :seo_title, :seo_meta_description, :created_at, :updated_at
json.url blog_post_url(blog_post, format: :json)
