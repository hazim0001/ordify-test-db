class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
