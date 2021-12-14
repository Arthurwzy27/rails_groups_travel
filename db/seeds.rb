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
  name: "Boyz Gang 🐺",
  capacity: 5
)
team_two = Team.create!(
  name: "Coding Gang 👨🏼‍💻",
  capacity: 21
)
team_three = Team.create!(
  name: "Besties 🍻",
  capacity: 9
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
Travel.create!(
  user: user_one,
  team: team_three,
  name: "Vamos to Paris",
  description: "Paris for 10 days, who's down?! 🍻",
  location: "Paris",
  price: rand(59..258),
  start_date: "2022-01-11",
  end_date: "2022-01-21"
)
Travel.create!(
  user: user_one,
  team: team_two,
  name: "Bali",
  description: "Wanna go to Bali?",
  location: "Bali",
  price: rand(59..258),
  start_date: "2021-12-24",
  end_date: "2022-01-17"
)
