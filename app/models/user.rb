class User < ApplicationRecord
  has_many :user_orders
  has_many :menu_items, through: :user_orders
end
