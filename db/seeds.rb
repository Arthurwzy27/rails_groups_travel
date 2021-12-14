# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Erasing DB..."
User.destroy_all

puts "Creation of one User..."
user_one = User.create!(email: "test1@example.com", password: "password")

puts "------------------------------------------------------------------"
puts "Creating first Team"
team_one = Team.create!(
  name: "BoyzGang",
  capacity: 5
)

puts "------------------------------------------------------------------"
puts "Creation of one Trip"

Travel.create!(
  user: user_one,
  team: team_one,
  name: "Trip to Barcelona",
  description: "Heyyo guys! Let's plan a trip to BArcelona for 10 days, what you think? ✌🏼",
  location: "Barcelona",
  price: rand(59..258),
  start_date: "2021-12-14",
  end_date: "2021-12-23"
)
