class Item < ApplicationRecord
  belongs_to :cart, optional :true
end
