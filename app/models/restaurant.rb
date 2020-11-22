class Restaurant < ApplicationRecord
  has_many :menus
  has_many :tables
  has_many :menu_items, through: :menus
  has_many :line_items, through: :menu_items
  has_many :orders, through: :line_items
  has_many :customers, through: :orders
end
