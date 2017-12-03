class Item < ApplicationRecord
  has_many :order_items
  validates :photo, presence: true, uniqueness: true
end
