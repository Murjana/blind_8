# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserInterest.destroy_all
User.destroy_all
Interest.destroy_all


puts "Deleted all instances of database"
User.create(nickname: "mermaid91", password: "123456", email: "oliv@gmail.com", gender: "female", preferred_date_ideas: "wine and dine", orientation: "straight",  about_me: "I'm a botanist who loves plant and I'm looking for someone to grow with 💐", age: 26)
User.create(nickname: "missmoin", password: "654321", email: "narmina@gmail.com", gender: "male" , preferred_date_ideas: "dinner and a movie :)", orientation: "bisexual",  about_me: "I'm looking for friends but also hoping to meet mr. right. I've been described as a good listener and fun person to be around", age: 26)
User.create(nickname: "chriscross", password: "123465", email: "chris@gmail.com", gender: "non-binary" , preferred_date_ideas: "bouldering or something physically active", orientation: "pansexual",  about_me: "I'm Chris. I'm open to absolutely anything. I love new experiences and the opportunity to meet new people. I'd love to go on a blind date. I've never been on one before. Low expectations.", age: 30)
User.create(nickname: "anajrum", password: "123456", email: 'murjana@gmail.com', gender: "female", preferred_date_ideas: "We stay in and I teach you how to use figma!", orientation: "straight",  about_me: "Former Tv journalist who turned into tech companies( operations side) with a passion to get more technical and more into learning how to build great projects!", age: 36)
User.create(nickname: "alosif", password: "123456", email: 'fisola@gmail.com', gender: "male", preferred_date_ideas: "A wild night out on the town!", orientation: "straight",  about_me: "I recently completed a master's degree in Sustainable Forest and Nature Management at the University of Gottingen, Germany. Before my master's degree ended, I decided to pursue my long-term interest in coding.", age: 31)
User.create(nickname: "yelsew", password: "123456", email: 'wes@gmail.com', gender: "male", preferred_date_ideas: "pizza and netlfix", orientation: "gay",  about_me: "Prior to this, I worked in book publishing and media for 7 years between New York and London. After Le Wagon, I hope to become a fulltime freelancer or work for an exciting tech company.", age: 29)
User.create(nickname: "clairebear", password: "123456", email: 'claire@gmail.com', gender: "female", preferred_date_ideas: "We show each other our DB schemas ;)", orientation: "straight",  about_me: "I'm a teacher at Le Wagon and I love coding and helping peopel perfect their projects!", age: 29)
User.create(nickname: "nuhyej",  password: "123456", email: 'jeyhun@gmail.com', gender: "male" , preferred_date_ideas: "A classy dinner and some top-notch wine", orientation: "straight",  about_me: "All the code in the world won't solve your business problems. You need to know how to use it =)", age: 30)

puts "Users created"
interests = ["Film", "Sports", "Books & Literature", "Politics & Current Events", "Food & Drink", "Arts & Museums", "Yoga & Meditation", "Coding"]
interests.each do |interest|
  Interest.create!(content: interest)
end
puts "Interests created"
User.all.each do |user|
  3.times do
    UserInterest.create!(user: user, interest: Interest.all.sample)
  end
end
puts "User Interests created"
