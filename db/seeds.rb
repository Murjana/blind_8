require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or newd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.new(name: 'Luke', movie: movies.first)

UserInterest.destroy_all
#Interest.destroy_all
Icebreaker.destroy_all
Chatroom.destroy_all
User.destroy_all

puts "Deleted all instances of database"

# validates :orientation, presence: true, inclusion: { in: %w(not-sharing straight gay lesbian bisexual allosexual androsexual asexual autosexual bicurious demisexual fluid graysexual gynesexual monosexual omnisexual pansexual polysexual queer questioning skoliosexual spectrasexual not-listed) }
# validates :gender, presence: true, inclusion: { in: ['Male', 'Female', 'Trans-Man', 'Trans-Woman', 'Non-binary', 'Non-conforming', 'Not-sharing'] }
# validates :zodiac, presence: true, inclusion: { in: %w(♈Aries ♉Taurus ♊Gemini ♋Cancer ♌Leo ♍Virgo ♎Libra ♏Scorpio ♐Sagittarius ♑Capricornus ♒Aquarius ♓Pisces) }


file_ladygogo = URI.open('https://images.saatchiart.com/saatchi/1781870/art/8396855/7461213-HSC00002-6.jpg')
ladygogo = User.new(nickname: "Lady Gogo", zodiac: "♐Sagittarius", orientation: "bisexual", password: "123456", email: "gogo@gmail.com", gender: "Female", about_me: "Im an artist based in Berlin. I moved here from Santiago, Chila over ten years ago and have fallen in love with the city ever since. I see myself as an explorer, someone who likes to take risks and try new things. Ive been called a feather in the wind by my friends, someone who goes with the flow of things and likes to see where life takes me. I joined this app because Im genuinely curious about meeting new people without the bullshit expectations around what someone is wearing or how someone photographs. I think Im attractive in real life, but that doesnt mean much to me these days anymore to be honest. At this point Im just looking for really good connection and inspiration.", preferred_date_ideas: "I love museums. Art is very close to my heart. I would jump on any opportunity to explore:) ", age: 26)
ladygogo.photo.attach(io: file_ladygogo, filename: 'botanest.jpg', content_type: 'image/jpg')
ladygogo.save!

file_madam_yogi = URI.open('https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/pd237-pdburnejones00052-image_3.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=1e5834b2e17eeebecccc2ec045a54540')
madam_yogi = User.new(nickname: "Madam Yogi", zodiac: "♏Scorpio", password: "123456", email: "yogi@gmail.com", orientation: "fluid", gender: "Trans-Woman", preferred_date_ideas: "I don’t like to go out, but I really enjoy quality time at home with someone. Wine, movies, etc ;)", about_me: " I’m a professional Yoga trainer. I’ve lived in Berlin all my life. You could call me a Berliner I suppose, but I also love to travel. I’m looking mostly for casual encounters that surprise me. I dont want my dating or sex life to feel like I’m ordering a pizza. I want genuine connection, but also genuine surprise. I want to be overcome by something I never knew existed and to discover my own unconscious desires. If anything I said sounds like it might relate to you, please POKE ME.", age: 26)
madam_yogi.photo.attach(io: file_madam_yogi, filename: 'mr_right.jpg', content_type: 'image/jpg')
madam_yogi.save!

file_bateman = URI.open('https://freesvg.org/img/Terrified-Face.png')
bateman = User.new(nickname: "Mr. Bateman", zodiac: "♎Libra", orientation: "questioning", password: "123465", email: "bateman@gmail.com", gender: "Male", preferred_date_ideas: "I don’t know why Im here. Ive been questioning things but I’m open to suggestions.", about_me: " I’m a business tycoon and entrepreneur. All my life I’ve been successful at what I do professionally. I take great pride in work but over the past several months I’ve realized that despite all my success I am completely alone. I’m a funny guy with many people I like to call friends but I’m looking for something deeper to fill the void. I’m not sure about myself sexually and I’m hoping to meet someone who will be kind and okay with that. I probably will not message you first because I can be shy. But let’s get a conversation going and see what happens.", age: 34)
bateman.photo.attach(io: file_bateman, filename: 'boulder.jpg', content_type: 'image/jpg')
bateman.save!

file_clown = URI.open('https://c.pxhere.com/images/61/ac/c7a23ec6ca3bbb111b2e7d075f69-1586085.jpg!d')
clown = User.new(nickname: "The Clown", zodiac: "♓Pisces", orientation: "spectrasexual", password: "123456", email: 'clown@gmail.com', gender: "Not-sharing", preferred_date_ideas: "Cooking is my hobby. I cook everything. I would love to cook for you and share my skills.", about_me: " I was raised in the Laplands of Finland and moved to Berlin 3 years ago. My friend told me about this app. Apparently, she met her husband here. I didn’t quite believe her when she told me but then after seeing their messages I decided to give it a try myself. I’m hopeful something will happen. But I have to warn you, I’m not a very “normal” person. I can be a bit erratic but I also have a heart of gold. I love move through the world like a raging bull. Life is too short to waste on being graceful. I want someone who will be with me on the journey to the end.", age: 23)
clown.photo.attach(io: file_clown, filename: 'tarzan.jpg', content_type: 'image/jpg')
clown.save!

file_forestman = URI.open('https://thumbs.dreamstime.com/b/british-library-digitised-image-page-61-forest-pictures-adirondacks-original-poems-alfred-b-street-223383918.jpg')
forestman = User.new(nickname: "alosif", zodiac: "♋Cancer", orientation: "bisexual", password: "123456", email: 'fisola@gmail.com', gender: "Male", preferred_date_ideas: "A wild night out on the town!", about_me: "I recently completed a master's degree in Sustainable Forest and Nature Management at the University of Gottingen, Germany.", age: 31)
forestman.photo.attach(io: file_forestman, filename: 'forestman.jpg', content_type: 'image/jpg')
forestman.save!

file_pizza = URI.open('https://m.media-amazon.com/images/I/61REzkpeLBL._AC_SX425_.jpg')
pizza = User.new(nickname: "yelsew", zodiac: "♋Cancer", orientation: "bisexual", password: "123456", email: 'wes@gmail.com', gender: "Female", preferred_date_ideas: "pizza and netlfix", about_me: "Prior to this, I worked in book publishing and media for 7 years between New York and London. After Le Wagon, I hope to become a fulltime freelancer or work for an exciting tech company.", age: 29)
pizza.photo.attach(io: file_pizza, filename: 'pizza.jpg', content_type: 'image/jpg')
pizza.save!

file_schemas = URI.open('https://cdn.pixabay.com/photo/2016/12/09/18/30/database-schema-1895779_1280.png')
schemas = User.new(nickname: "clairebear", zodiac: "♋Cancer", orientation: "bisexual", password: "123456", email: 'claire@gmail.com', gender: "Not-sharing", preferred_date_ideas: "We show each other our DB schemas ;)", about_me: "I'm a teacher at Le Wagon and I love coding and helping peopel perfect their projects!", age: 29)
schemas.photo.attach(io: file_schemas, filename: 'schemas.png', content_type: 'image/png')
schemas.save!

file_kissy = URI.open('https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_740,w_1100/v1555435135/shape/mentalfloss/ltprimary.jpg?itok=CKFsQwJl')
kissy = User.new(nickname: "nuhyej",  orientation: "bisexual", zodiac: "♋Cancer", password: "123456", email: 'jeyhun@gmail.com', gender: "Trans-Woman" , preferred_date_ideas: "A classy dinner and some top-notch wine", about_me: "All the code in the world won't solve your business problems. You need to know how to use it =)", age: 30)
kissy.photo.attach(io: file_kissy, filename: 'kissy.jpg', content_type: 'image/png')

puts "Users newd"

interests = ['Adventure parks', 'Amusement Park', 'Animal', 'Antiques', 'Antiquing', 'Astrology', 'Astronomy', 'Back packing', 'Badminton', 'Baking', 'Ballet', 'Coding', 'Sculpture', 'Self-Improvement', 'Singing', 'Diving', 'Skincare', 'Snorkeling', 'Snow Biking', 'Socializing', 'Social Networking', 'Swimming', 'Tarot', 'Traveling', 'Volunteering', 'Walking', 'Watching Movies', 'Weight training', 'Weightlifting', 'Wines', 'Wrestling', 'Writing', 'Zumba']

interests.each do |interest|
  Interest.create!(content: interest)
end

# puts "Interests newd"
# User.all.each do |user|
#   3.times do
#     UserInterest.create!(user: user, interest: Interest.all.sample)
#   end
# end
# puts "User Interests newd"

puts "icebreakers new"

icebreakers = ['Given the choice of anyone in the world, whom would you want as a dinner guest?', 'Would you like to be famous? In what way?', 'Before making a telephone call, do you ever rehearse what you are going to say? Why?', 'What would constitute a perfect day for you?', 'When did you last sing to yourself? To someone else?', 'If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?', 'Do you have a secret hunch about how you will die?', 'Name three things you and your partner appear to have in common.', 'For what in your life do you feel most grateful?', 'If you could change anything about the way you were raised, what would it be?', 'If you could wake up tomorrow having gained any one quality or ability, what would it be?', 'If a crystal ball could tell you the truth about yourself, your life, the future or anything else, what would you want to know?', 'Is there something that you have dreamed of doing for a long time? Why havent you done it?', 'What is the greatest accomplishment of your life?', 'What do you value most in a friendship?', 'What is your most treasured memory?', 'What is your most terrible memory?', 'If you knew that in one year you would die suddenly, would you change anything about the way you are now living? Why?', 'What does friendship mean to you?', 'What roles do love and affection play in your life?”, “Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items.”, “How close and warm is your family? Do you feel your childhood was happier than most other peoples?', 'How do you feel about your relationship with your mother?', 'Complete this sentence: I wish I had someone with whom I could share ... ', 'If you were going to become a close friend with your partner, please share what would be important for him or her to know.', 'When did you last cry in front of another person? Or byy yourself?', "If you were to die this evening with no opportunity to communicate with anyone, what would you most regret not having told someone? Why have not you told them yet?", 'Your house, containing everything you own, catches fire. After saving your loved ones and pets, you have time to safely make a final dash to save any one item. What would it be? Why?']

icebreakers.each do |icebreaker|
  Icebreaker.create!(content: icebreaker)
end

puts "chatrooms created"
Chatroom.create!(user_a: forestman, user_b: schemas)
Chatroom.create!(user_a: forestman, user_b: ladygogo)
Chatroom.create!(user_a: forestman, user_b: pizza)
Chatroom.create!(user_a: forestman, user_b: clown)
Chatroom.create!(user_a: forestman, user_b: madam_yogi)
Chatroom.create!(user_a: forestman, user_b: kissy)
Chatroom.create!(user_a: forestman, user_b: bateman)
Chatroom.create!(user_a: clown, user_b: kissy)
Chatroom.create!(user_a: clown, user_b: pizza)
