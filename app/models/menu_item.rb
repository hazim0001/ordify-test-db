class MenuItem < ApplicationRecord
  has_many :user_orders
  has_many :users, through: :user_orders
  has_many :tables, through: :user_orders
end
