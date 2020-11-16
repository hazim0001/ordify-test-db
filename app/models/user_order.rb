class UserOrder < ApplicationRecord
  has_many :order_items
  has_many :menu_items, through: :order_items
  belongs_to :user
  belongs_to :table
end
