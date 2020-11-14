class UserOrder < ApplicationRecord
  belongs_to :user
  belongs_to :menu_item
  belongs_to :table
end
