class Table < ApplicationRecord
  has_many :orders
  has_many :line_items, through: :orders
  has_many :menu_items, through: :line_items
  has_many :customers, through: :orders
  belongs_to :restaurant
  validates :name, presence: true
end
