require "open-uri"
 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.new(name: 'Luke', movie: movies.first)

UserInterest.destroy_all
User.destroy_all
Interest.destroy_all


puts "Deleted all instances of database"

file_botanest = URI.open('https://s3.amazonaws.com/lowres.cartoonstock.com/music-botanical_violinist-botanists-green_fingers-gardener-flower-rbon2978_low.jpg')
botanest = User.new(nickname: "mermaid91", password: "123456", email: "oliv@gmail.com", gender: "female", preferred_date_ideas: "wine and dine", orientation: "heterosexual",  about_me: "I'm a botanist who loves plant and I'm looking for someone to grow with 💐", age: 26)
botanest.photo.attach(io: file_botanest, filename: 'botanest.jpg', content_type: 'image/jpg')
botanest.save!
file_mr_right = URI.opn('https://cdn.pixabay.com/photo/2019/02/22/10/26/swan-4013225_960_720.jpg')
mr_right = User.new(nickname: "missmoin", password: "654321", email: "narmina@gmail.com", gender: "male" , preferred_date_ideas: "dinner and a movie :)", orientation: "bisexual",  about_me: "I'm looking for friends but also hoping to meet mr. right. I've been described as a good listener and fun person to be around", age: 26)
mr_right.photo.attach(io: file_mr_right, filename: 'mr_right.jpg', content_type: 'image/jpg')
mr_right.save!

file_boulder = URI.open('https://cdn.pixabay.com/photo/2017/06/19/02/21/devils-marbles-2417952_960_720.jpg')
boulder = User.new(nickname: "chriscross", password: "123465", email: "chris@gmail.com", gender: "non-binary" , preferred_date_ideas: "bouldering or something physically active", orientation: "pansexual",  about_me: "I'm Chris. I'm open to absolutely anything. I love new experiences and the opportunity to meet new people. I'd love to go on a blind date. I've never been on one before. Low expectations.", age: 30)
boulder.photo.attach(io: file_boulder, filename: 'boulder.jpg', content_type: 'image/jpg')
boulder.save!

file_tarzan = URI.open ('https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/CF34FE43CA2F589A46B9E52EC16A92D2F9818885ED6D6CFBF22B8F217CEEC84E/scale?width=1920&aspectRatio=1.78&format=jpeg')
tarzan = User.new(nickname: "anajrum", password: "123456", email: 'murjana@gmail.com', gender: "female", preferred_date_ideas: "We stay in and I teach you how to use figma!", orientation: "straight",  about_me: "Former Tv journalist who turned into tech companies( operations side) with a passion to get more technical and more into learning how to build great projects! Will you be my Tarzan?", age: 36)
tarzan.photo.attach(io: file_tarzan, filename: 'tarzan.jpg', content_type: 'image/jpg')
tarzan.save!

file_forestman = URI.open('https://thumbs.dreamstime.com/b/british-library-digitised-image-page-61-forest-pictures-adirondacks-original-poems-alfred-b-street-223383918.jpg')
forestman = User.new(nickname: "alosif", password: "123456", email: 'fisola@gmail.com', gender: "male", preferred_date_ideas: "A wild night out on the town!", orientation: "straight",  about_me: "I recently completed a master's degree in Sustainable Forest and Nature Management at the University of Gottingen, Germany. Before my master's degree ended, I decided to pursue my long-term interest in coding.", age: 31)
forestman.photo.attach(io: file_forestman, filename: 'forestman.jpg', content_type: 'image/jpg')
forestman.save!

file_pizza = URI.open('https://m.media-amazon.com/images/I/61REzkpeLBL._AC_SX425_.jpg')
pizza = User.new(nickname: "yelsew", password: "123456", email: 'wes@gmail.com', gender: "male", preferred_date_ideas: "pizza and netlfix", orientation: "gay",  about_me: "Prior to this, I worked in book publishing and media for 7 years between New York and London. After Le Wagon, I hope to become a fulltime freelancer or work for an exciting tech company.", age: 29)
pizza.photo.attach(io: file_pizza, filename: 'pizza.jpg', content_type: 'image/jpg')
pizza.save!

file_schemas = URI.open('https://cdn.pixabay.com/photo/2016/12/09/18/30/database-schema-1895779_1280.png')
schemas = User.new(nickname: "clairebear", password: "123456", email: 'claire@gmail.com', gender: "female", preferred_date_ideas: "We show each other our DB schemas ;)", orientation: "straight",  about_me: "I'm a teacher at Le Wagon and I love coding and helping peopel perfect their projects!", age: 29)
schemas.photo.attach(io: file_schemas, filename: 'schemas.png', content_type: 'image/png')
schemas.save!

file_kissy = URI.open('https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_740,w_1100/v1555435135/shape/mentalfloss/ltprimary.jpg?itok=CKFsQwJl')
kissy = User.new(nickname: "nuhyej",  password: "123456", email: 'jeyhun@gmail.com', gender: "male" , preferred_date_ideas: "A classy dinner and some top-notch wine", orientation: "straight",  about_me: "All the code in the world won't solve your business problems. You need to know how to use it =)", age: 30)
kissy.photo.attach(io: file_kissy, filename: 'kissy.jpg', content_type: 'image/png')

puts "Users newd"

interests = ["Film", "Sports", "Books & Literature", "Politics & Current Events", "Food & Drink", "Arts & Museums", "Yoga & Meditation", "Coding"]
interests.each do |interest|
  Interest.create!(content: interest)
end
puts "Interests newd"
User.all.each do |user|
  3.times do
    UserInterest.create!(user: user, interest: Interest.all.sample)
  end
end
puts "User Interests newd"
