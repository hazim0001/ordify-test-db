class AddDispatchedToUserOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :user_orders, :dispatched, :boolean, default: false
  end
end
