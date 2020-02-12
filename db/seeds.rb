# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dish = { name: "Dish", address: "London E2", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "London E1", category: "italian" }
pizza_west =  { name: "Pizza west", address: "London W1", category: "french" }
macdo = { name: "Macdo", address: "Paris", category: "belgian" }
kebab_resto = { name: "kebab_resto", address: "Paris", category: "chinese" }

[dish, pizza_east, pizza_west, macdo, kebab_resto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
