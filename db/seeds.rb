# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

Meal.destroy_all
User.destroy_all

# chef1=>4
user1 = User.create!(email: "titi@hotmail.fr", name: "Titi", password: "password")
#faker 10 utilisateur fake

10.times do
  Meal.create!(
    user: User.all.sample,
    name: Faker::Food.dish,
    description: Faker::Food.ingredient,
    calories: Faker::Number.decimal(2),
    price: Faker::Number.number(2),
    date: Faker::Date.forward(14),
    stock: Faker::Number.decimal(2),
  )
end

# faire 5fake user
