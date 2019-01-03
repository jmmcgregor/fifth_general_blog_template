class CreateBreadcrumbTrails < ActiveRecord::Migration[5.2]
  def change
    create_table :breadcrumb_trails do |t|

      t.timestamps
    end
  end
end
