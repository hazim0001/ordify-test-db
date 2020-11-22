class Order < ApplicationRecord
  has_many :line_items
  has_many :menu_items, through: :line_items
  belongs_to :customer
  belongs_to :table

  # -----> to check if we gonna use facebook to login<-----
  # validate :active_customer, on: :create
  # # custom method to check if the customer is active ot not--
  # # as active attr updates to INACTIVE when we recieve response from Strip webhook
  # def active_customer
  #   errors.add(:customer_id, 'customer is not active') unless customer.active?
  # end
end
