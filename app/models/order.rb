class Order < ApplicationRecord
  has_many :line_items
  has_many :menu_items, through: :line_items
  belongs_to :customer
  belongs_to :table
end
