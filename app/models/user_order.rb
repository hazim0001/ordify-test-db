class UserOrder < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_many :order_items
  has_many :menu_items, through: :order_items
end
