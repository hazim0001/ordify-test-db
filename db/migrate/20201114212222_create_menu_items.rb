class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.float :sub_total # float need to be changed to integer with "money-rails" gem
      t.text :description
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
