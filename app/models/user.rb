class User < ApplicationRecord
  has_one :user_order
  has_many :order_items, through: :user_order
  has_many :menu_items, through: :order_items
  has_one :table, through: :user_order
end
