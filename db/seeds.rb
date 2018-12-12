# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
200.times do
  Hackathon.create(
    host: Faker::Company.unique.name,
    state: Faker::Address.state,
    free: Faker::Boolean.boolean,
    description: Faker::Lorem.paragraph(3),
    date: Faker::Date.between(23.days.from_now,365.days.from_now)
  )
end
