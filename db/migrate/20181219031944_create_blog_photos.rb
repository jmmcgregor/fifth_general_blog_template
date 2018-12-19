class CreateBlogPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_photos do |t|
      t.string :image_data

      t.timestamps
    end
  end
end
