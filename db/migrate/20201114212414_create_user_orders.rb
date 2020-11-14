class CreateUserOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :user_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :menu_item, null: false, foreign_key: true
      t.references :table, null: false, foreign_key: true

      t.timestamps
    end
  end
end
