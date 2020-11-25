# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
user1 = User.new(email:'user1@user.com', password:'123456', username: "User 1")
user1.save!
user2 = User.new(email:'user2@user.com', password: '1234567', username: "User 2")
user2.save!
user3 = User.new(email:'user3@user.com', password: '12345678', username: "User 3")
user3.save!
puts "Creating chicken listings..."
chicken1 = Chicken.new(
  name:'Henrietta',
  description: "A promiscuous chook looking for a fun time",
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
  description: "A quiet bird with a gentle soul",
  owner: user2,
  breed: "golden",
  location: "Melbourne",
  age: 5,
  daily_rate: 12,
  egg_size: "M"
)
chicken3.save!
chicken4 = Chicken.new(
  name:'XAE A-12',
  description: "Wierd parents - don't ask",
  owner: user3,
  breed: "cheeky",
  location: "Melbourne",
  age: 3,
  daily_rate: 15,
  egg_size: "S"
)
chicken4.save!
chicken5 = Chicken.new(
  name:'Hurdy',
  description: "A true real egg-laying machine",
  owner: user3,
  breed: "chunky",
  location: "Melbourne",
  age: 3,
  daily_rate: 50,
  egg_size: "L"
)
chicken5.save!
chicken6 = Chicken.new(
  name:'Trumpster',
  description: "Will make your backyard great again",
  owner: user3,
  breed: "chunky",
  location: "Melbourne",
  age: 3,
  daily_rate: 25,
  egg_size: "S"
)
chicken6.save!
booking1 = Booking.new(
  chicken: chicken1,
  customer: user3,
  start_date: Date::new(2020,11,30),
  end_date: Date::new(2020,12,7)
  )
booking1.save!
booking2 = Booking.new(
  chicken: chicken4,
  customer: user2,
  start_date: Date::new(2020,12,1),
  end_date: Date::new(2020,12,25)
  )
booking2.save!
booking3 = Booking.new(
  chicken: chicken6,
  customer: user1,
  start_date: Date::new(2020,12,5),
  end_date: Date::new(2020,12,17)
  )
booking3.save!
review1 = Review.new(
  booking: booking1,
  rating: 4,
  content: "Truly a dirty bird. Would definitely recommend!"
  )
review2 = Review.new(
  booking: booking2,
  rating: 2,
  content: "This is an angsty chicken. Doesn't play well with others. I want a refund."
  )
review3 = Review.new(
  booking: booking3,
  rating: 1,
  content: "A bit of a bully. Had tiny eggs too. Dissappointed."
  )
review1.save!
review2.save!
review3.save!

