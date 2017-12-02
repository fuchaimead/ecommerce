class Item < ApplicationRecord
  belongs_to :cart, optional: :true
  validates :photo, presence: true, uniqueness: true
end
