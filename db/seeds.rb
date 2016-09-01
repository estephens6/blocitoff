# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

15.times do
    User.create!(
#        username: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password(8)
        )
end

users = User.all

40.times do
    Item.create!(
        user: users.sample,
        name: Faker::Hacker.noun,
        )
end

items = Item.all

puts "Seeds have been planted!"
puts "#{users.count} users have been grown!"
puts "#{items.count} items are on lists!"
