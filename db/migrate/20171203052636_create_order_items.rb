class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :cart, foreign_key: true
      t.float :unit_price
      t.float :total_price

      t.timestamps
    end
  end
end
