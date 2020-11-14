class Table < ApplicationRecord
  has_many :user_orders
  has_many :menu_items, through: :user_orders
  has_many :users, through: :user_orders
end
