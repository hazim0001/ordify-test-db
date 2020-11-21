class Customer < ApplicationRecord
  has_one :order
  has_many :line_items, through: :order
  has_many :menu_items, through: :line_items
  has_one :table, through: :order
end
