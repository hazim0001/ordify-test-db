# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MenuItem.destroy_all
User.destroy_all
Table.destroy_all
puts "creating menue items and users"
tablee = []
2.times do
  tablee << Table.create!
end
puts "tables are created #{tablee.sample}"
10.times do
  menu_item_new = MenuItem.create(title: Faker::Food.dish, price: rand(100..300))
  puts "menu ites has been created #{menu_item_new}"
  user = User.create(name: Faker::Name.name)
  puts "User has been created #{user}"
  UserOrder.create!(user: user, menu_item: menu_item_new, table: tablee.sample)
end
puts "doneee"
