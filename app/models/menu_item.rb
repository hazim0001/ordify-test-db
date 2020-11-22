class MenuItem < ApplicationRecord
  has_many :line_items
  has_many :orders, through: :line_items
  has_many :customers, through: :orders
  has_many :tables, through: :orders
  has_many :menus
  has_many :restaurants, through: :menus
  belongs_to :category
  validates :title, presence: true, length: { in: 3..150 } # uniqnesss pending research
  validates :description, presence: true, length: { in: 10..50 } # max to be checked when we have the menu_item card
end
