# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Destruction des tables :"
User.destroy_all
print "User, "
Event.destroy_all
print "Event, "
Attendance.destroy_all
print "Attendance."


puts "\n\nCréation des users"
5.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email(domain: 'yopmail.com'),
    description: Faker::Lorem.sentences,
    password: Faker::Alphanumeric.alpha(number: 10))
    puts "User crée ! "
end

puts "\n\nCréation des events"

5.times do
  Event.create!(
    start_date: Faker::Date.forward(days: 365),
    duration: 120,
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.sentences,
    price:Faker::Commerce.price,
    location:Faker::Address.full_address)
    puts "Event  crée ! "
    
end

puts "\n\nCréation des attendances"

5.times do
  Attendance.create!(stripe_customer_id: Faker::Finance.credit_card,
    event: Event.all.sample,
    user: User.all.sample)
  puts "Attendance  crée ! "
 
end

