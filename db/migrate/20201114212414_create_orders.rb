class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.float :total_price, default: 0.0
      t.boolean :dispatched, default: false
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
