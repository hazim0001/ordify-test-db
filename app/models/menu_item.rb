class MenuItem < ApplicationRecord
  has_many :order_items
  has_many :user_orders, through: :order_items
  has_many :users, through: :user_orders
  has_many :tables, through: :user_orders
  belongs_to :category
end
