class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.float :item_price
      t.text :description

      t.timestamps
    end
  end
end
