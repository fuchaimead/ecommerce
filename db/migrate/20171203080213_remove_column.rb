class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :cart_id
  end
end
