class Restaurant < ApplicationRecord
  has_one :menu # -----> check menu
  has_many :tables
  has_many :menu_items, through: :menu
  has_many :line_items, through: :menu_items
  has_many :categories, through: :menu_items
  has_many :orders, through: :tables
  has_many :customers, through: :orders

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :cusine, presence: true
end
