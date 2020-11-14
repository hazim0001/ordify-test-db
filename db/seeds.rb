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
10.times do
  MenuItem.create(title: Faker::Food.dish, price: rand(1..9))
end
3.times do
  table = Table.create!()
  5.times do
    User.create(name: Faker::Name.name, table: table)
  end
end
puts "doneee"
