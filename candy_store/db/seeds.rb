# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

candy1 = Candy.new(name: "Skittles", calories: 230, wrapper_color: "red", has_nuts: false)

10.times do
candy_name = Faker::Dessert.topping
calories = rand(100..500)
wrapper_color = Faker::Color.color_name
nuts = [true, false].sample
Candy.create(name: candy_name, calories: calories, wrapper_color: wrapper_color, has_nuts: nuts)
end

