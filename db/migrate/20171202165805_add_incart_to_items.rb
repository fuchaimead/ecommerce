class AddIncartToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :in_cart, :boolean, default: false
  end
end
