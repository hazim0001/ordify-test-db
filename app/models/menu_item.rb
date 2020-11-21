class MenuItem < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :customers, through: :rders
  has_many :tables, through: :orders
  has_many :menus
  has_many :restaurants, through: :menus
  belongs_to :category
end
