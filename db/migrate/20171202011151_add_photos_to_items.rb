class AddPhotosToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :photo, :string
  end
end
