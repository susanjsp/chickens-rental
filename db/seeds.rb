# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
user1 = User.new(email:'user1@user.com', password:'123456')
user1.save!

user2 = User.new(email:'user2@user.com', password: '1234567')
user2.save!

user3 = User.new(email:'user3@user.com', password: '12345678')
user3.save!

puts "Creating chicken listings..."

chicken1 = Chicken.new(
  name:'Henrietta',
  description: "A cute chook looking for a fun time",
  owner: user1,
  breed: "funky",
  location: "Melbourne",
  age: 5,
  daily_rate: 15,
  egg_size: "S"
)
chicken1.save!

chicken2 = Chicken.new(
  name:'Frank',
  description: "A serious, hardworking rooster",
  owner: user2,
  breed: "sporty",
  location: "Melbourne",
  age: 9,
  daily_rate: 25,
  egg_size: "XL"
)
chicken2.save!

chicken3 = Chicken.new(
  name:'Ginger',
  description: "A lazy chook - sleeps a lot",
  owner: user2,
  breed: "golden",
  location: "Melbourne",
  age: 5,
  daily_rate: 12,
  egg_size: "M"
)
chicken3.save!



