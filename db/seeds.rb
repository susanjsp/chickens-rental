# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
user1 = User.new(email:'user1@gmail.com', password:'123456')
user1.save!

user2 = User.new(email:'user2@gmail.com', password: '1234567')
user2.save!

puts "Creating chicken listings..."

chicken1 = Chicken.new(
  name:'Henrietta',
  owner: user1
)
chicken.save!

puts "Creating bookings..."

booking1 = Booking.new(
  customer: user2,
  chicken: chicken1
)
booking1.save!

puts "done!"



