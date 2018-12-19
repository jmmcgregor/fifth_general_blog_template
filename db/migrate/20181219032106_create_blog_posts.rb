class CreateBlogPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_posts do |t|
      t.string :media_type
      t.string :title
      t.string :main_image
      t.string :video_upload
      t.text :body
      t.string :seo_title
      t.string :seo_meta_description

      t.timestamps
    end
  end
end
