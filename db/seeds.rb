# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "perkinsdrive@gmail.com", password: "helloworld")

require 'faker'

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(8)
  )
end

@users = User.all

25.times do
  Item.create!(
    user: @users.sample,
    name: Faker::Lorem.sentence
  )
end

puts "There were #{User.count} users created."
puts "There were #{Item.count} items created."