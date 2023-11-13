# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


200.times do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: '123456',
    password_confirmation: '123456',
    cpf: Faker::Number.number(digits: 11),
    rg: Faker::Number.number(digits: 8),
    dob: DateTime.current - rand(1..99).year,
    zip_code:,
    address:,
    address_number:,
    state:, 
    city:,
    neighborhood:,
    mobile01: Faker::Number.number(digits: 11),
    mobile02: Faker::Number.number(digits: 11),
    phone01: Faker::Number.number(digits: 10),
    phone02: Faker::Number.number(digits: 10)
  )
end
