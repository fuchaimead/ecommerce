class OrderItem < ApplicationRecord
  belongs_to :item
  belongs_to :cart
  validate :item_present
  validate :cart_present
end
