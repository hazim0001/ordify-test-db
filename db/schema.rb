# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_21_211103) do

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.text "comment"
    t.integer "quantity"
    t.float "total"
    t.integer "order_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_line_items_on_menu_item_id"
    t.index ["order_id"], name: "index_line_items_on_order_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "title"
    t.float "item_price"
    t.text "description"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_menu_items_on_category_id"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "menu_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_item_id"], name: "index_menus_on_menu_item_id"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.float "total_price", default: 0.0
    t.boolean "dispatched", default: false
    t.integer "table_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["table_id"], name: "index_orders_on_table_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "cusine"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_tables_on_restaurant_id"
  end

  add_foreign_key "line_items", "menu_items"
  add_foreign_key "line_items", "orders"
  add_foreign_key "menu_items", "categories"
  add_foreign_key "menus", "menu_items"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "tables"
  add_foreign_key "tables", "restaurants"
end
