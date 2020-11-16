class CreateUserOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :user_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.float :total_price, default: 0.0
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
