class AddPasswordDigestToBlogUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :blog_users, :password_digest, :string
  end
end
