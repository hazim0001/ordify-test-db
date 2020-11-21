class Menu < ApplicationRecord
  belongs_to :restaurant
  belongs_to :menu_item
end
