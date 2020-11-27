# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating users..."
user1 = User.new(email:'ondine@gmail.com', password:'ondine123', username: "Ondine")
user1.save!
user2 = User.new(email:'susan@gmail.com', password: 'susan123', username: "Susan")
user2.save!
user3 = User.new(email:'robert@gmail.com', password: 'robert123', username: "Robert")
user3.save!
user4 = User.new(email:'jurek@gmail.com', password: 'jurek123', username: "Jurek")
user4.save!
puts "Creating chicken listings..."
chicken1 = Chicken.new(
  name:'Henrietta',
  description: "A promiscuous chook looking for a fun time",
  owner: user1,
  breed: "funky",
  location: "Melbourne",
  age: 5,
  daily_rate: 15,
  egg_size: "Extra-Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451877/emile-guillemot-NjOobDHQTH8-unsplash_rnk1mj.jpg"
)
chicken1.save!
chicken2 = Chicken.new(
  name:'Frank',
  description: "A serious, hardworking rooster",
  owner: user2,
  breed: "funky",
  location: "Melbourne",
  age: 9,
  daily_rate: 25,
  egg_size: "Extra-Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451876/daniel-tuttle-9Vte0R1CzAE-unsplash_g2c1wd.jpg"

)
chicken2.save!
chicken3 = Chicken.new(
  name:'Ginger',
  description: "A quiet bird with a gentle soul",
  owner: user3,
  breed: "golden",
  location: "Melbourne",
  age: 5,
  daily_rate: 12,
  egg_size: "Medium",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451875/brunch-girl_pebe0p.jpg"
)
chicken3.save!
chicken4 = Chicken.new(
  name:'XAE A-12',
  description: "Weird parents - don't ask",
  owner: user2,
  breed: "cheeky",
  location: "Sydney",
  age: 3,
  daily_rate: 15,
  egg_size: "Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451874/cooldud3_brh7cn.jpg"
)
chicken4.save!
chicken5 = Chicken.new(
  name:'Hurdy',
  description: "A true real egg-laying machine",
  owner: user1,
  breed: "chunky",
  location: "Perth",
  age: 3,
  daily_rate: 50,
  egg_size: "Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451870/bro_fseagt.jpg"
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
  egg_size: "Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451870/lbSUhaM_occ5wv.jpg"
)
chicken7 = Chicken.new(
  name:'Colonel Saunders',
  description: "I created the Twister!",
  owner: user2,
  breed: "funky",
  location: "Sydney",
  age: 5,
  daily_rate: 48,
  egg_size: "Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451870/blue-hat_weacdn.jpg"
)
chicken7.save!
chicken8 = Chicken.new(
  name:'Franco',
  description: "I cheeky chick with an Italian twist",
  owner: user1,
  breed: "sporty",
  location: "Brisbane",
  age: 9,
  daily_rate: 25,
  egg_size: "Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606362414/05wnp6blbxkv91s4hnl8hki3tvac.jpg"

)
chicken8.save!
chicken9 = Chicken.new(
  name:'Maureen',
  description: "Use my eggs for some fluffy cakes",
  owner: user3,
  breed: "golden",
  location: "Brisbane",
  age: 5,
  daily_rate: 12,
  egg_size: "Medium",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451886/michael-anfang-OeicdfXqHCM-unsplash_igurgj.jpg"
)
chicken9.save!
chicken10 = Chicken.new(
  name:'Helga',
  description: "Ich liebe dich!",
  owner: user1,
  breed: "cheeky",
  location: "Sydney",
  age: 3,
  daily_rate: 15,
  egg_size: "Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451869/knitted_hpwz2e.png"
)
chicken10.save!
chicken11 = Chicken.new(
  name:'Natasha',
  description: "Clucking since 2017",
  owner: user2,
  breed: "chunky",
  location: "Melbourne",
  age: 3,
  daily_rate: 50,
  egg_size: "Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451866/silver-fox_jygkzq.jpg"
)
chicken11.save!
chicken12 = Chicken.new(
  name:'Boris',
  description: "I am a bear disguised as a chicken",
  owner: user1,
  breed: "chunky",
  location: "Perth",
  age: 3,
  daily_rate: 25,
  egg_size: "Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451866/raver_uoqbhm.jpg"
)
chicken12.save!
chicken13 = Chicken.new(
  name:'Basil',
  description: "My eggs are shiny",
  owner: user2,
  breed: "funky",
  location: "Perth",
  age: 5,
  daily_rate: 15,
  egg_size: "Small",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451865/chicken1_fopcvj.jpg"
)
chicken13.save!
chicken14 = Chicken.new(
  name:'Archie',
  description: "I run on the weekends and lay healthy eggs",
  owner: user2,
  breed: "sporty",
  location: "Brisbane",
  age: 9,
  daily_rate: 25,
  egg_size: "Large",
  photo_url: "https://res.cloudinary.com/dyaczxyrx/image/upload/v1606451864/lovely-chick_pfusjx.jpg"

)
chicken14.save!

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
booking4 = Booking.new(
  chicken: chicken7,
  customer: user3,
  start_date: Date::new(2020,11,30),
  end_date: Date::new(2020,12,7)
  )
booking4.save!
booking5 = Booking.new(
  chicken: chicken8,
  customer: user2,
  start_date: Date::new(2020,12,1),
  end_date: Date::new(2020,12,25)
  )
booking5.save!
booking6 = Booking.new(
  chicken: chicken5,
  customer: user1,
  start_date: Date::new(2020,12,5),
  end_date: Date::new(2020,12,17)
  )
booking6.save!
booking7 = Booking.new(
  chicken: chicken8,
  customer: user1,
  start_date: Date::new(2020,11,30),
  end_date: Date::new(2020,12,7)
  )
booking7.save!
booking8 = Booking.new(
  chicken: chicken12,
  customer: user3,
  start_date: Date::new(2020,12,1),
  end_date: Date::new(2020,12,25)
  )
booking8.save!
booking9 = Booking.new(
  chicken: chicken12,
  customer: user1,
  start_date: Date::new(2020,12,5),
  end_date: Date::new(2020,12,17)
  )
booking9.save!
booking10 = Booking.new(
  chicken: chicken11,
  customer: user3,
  start_date: Date::new(2020,11,30),
  end_date: Date::new(2020,12,7)
  )
booking10.save!
booking11 = Booking.new(
  chicken: chicken7,
  customer: user2,
  start_date: Date::new(2020,12,1),
  end_date: Date::new(2020,12,25)
  )
booking11.save!
booking12 = Booking.new(
  chicken: chicken6,
  customer: user2,
  start_date: Date::new(2020,12,5),
  end_date: Date::new(2020,12,17)
  )
booking12.save!
review10 = Review.new(
  booking: booking1,
  rating: 4,
  content: "Truly a dirty bird. Would definitely recommend!"
  )
review11 = Review.new(
  booking: booking2,
  rating: 2,
  content: "This is an angsty chicken. Doesn't play well with others. I want a refund."
  )
review12 = Review.new(
  booking: booking3,
  rating: 1,
  content: "A bit of a bully. Had tiny eggs too. Dissappointed."
  )
review1 = Review.new(
  booking: booking4,
  rating: 5,
  content: "OMG!!!! AMAZING <3"
  )
review2 = Review.new(
  booking: booking5,
  rating: 2,
  content: "Meh, alright I gues, no thrills..."
  )
review3 = Review.new(
  booking: booking6,
  rating: 1,
  content: "Absolutely hated all the pecking."
  )
review4 = Review.new(
  booking: booking7,
  rating: 5,
  content: "Lovely stuff xx!"
  )
review5 = Review.new(
  booking: booking8,
  rating: 4,
  content: "Fun times but a bit too peckish."
  )
review6 = Review.new(
  booking: booking9,
  rating: 3,
  content: "Eggs were waaay larger than expected."
  )
review7 = Review.new(
  booking: booking10,
  rating: 5,
  content: "I loved it!"
  )
review8 = Review.new(
  booking: booking11,
  rating: 5,
  content: "Perfect cuddle for my birthday."
  )
review9 = Review.new(
  booking: booking12,
  rating: 1,
  content: "Too naughty for my liking."
  )
review1.save!
review2.save!
review3.save!
review4.save!
review5.save!
review6.save!
review7.save!
review8.save!
review9.save!
review10.save!
review11.save!
review12.save!


