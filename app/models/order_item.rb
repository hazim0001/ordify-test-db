class OrderItem < ApplicationRecord
  belongs_to :user_order
  belongs_to :menu_item
end
