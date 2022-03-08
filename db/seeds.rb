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
Icebreaker.destroy_all
Chatroom.destroy_all

puts "Deleted all instances of database"

# validates :orientation, presence: true, inclusion: { in: %w(not-sharing straight gay lesbian bisexual allosexual androsexual asexual autosexual bicurious demisexual fluid graysexual gynesexual monosexual omnisexual pansexual polysexual queer questioning skoliosexual spectrasexual not-listed) }
# validates :gender, presence: true, inclusion: { in: ['Male', 'Female', 'Trans-Man', 'Trans-Woman', 'Non-binary', 'Non-conforming', 'Not-sharing'] }
# validates :zodiac, presence: true, inclusion: { in: %w(♈Aries ♉Taurus ♊Gemini ♋Cancer ♌Leo ♍Virgo ♎Libra ♏Scorpio ♐Sagittarius ♑Capricornus ♒Aquarius ♓Pisces) }


file_botanest = URI.open('https://s3.amazonaws.com/lowres.cartoonstock.com/music-botanical_violinist-botanists-green_fingers-gardener-flower-rbon2978_low.jpg')
botanest = User.new(nickname: "mermaid91", zodiac: "♋Cancer", orientation: "bisexual", password: "123456", email: "oliv@gmail.com", gender: "Male", preferred_date_ideas: "wine and dine", about_me: "I'm a botanist who loves plant and I'm looking for someone to grow with 💐", age: 26)
botanest.photo.attach(io: file_botanest, filename: 'botanest.jpg', content_type: 'image/jpg')
botanest.save!
file_mr_right = URI.open('https://cdn.pixabay.com/photo/2019/02/22/10/26/swan-4013225_960_720.jpg')
mr_right = User.new(nickname: "missmoin", zodiac: "♋Cancer", password: "654321", email: "narmina@gmail.com", orientation: "bisexual", gender: "Male", preferred_date_ideas: "dinner and a movie :)", about_me: "I'm looking for friends but also hoping to meet mr. right. I've been described as a good listener and fun person to be around", age: 26)
mr_right.photo.attach(io: file_mr_right, filename: 'mr_right.jpg', content_type: 'image/jpg')
mr_right.save!

file_boulder = URI.open('https://cdn.pixabay.com/photo/2017/06/19/02/21/devils-marbles-2417952_960_720.jpg')
boulder = User.new(nickname: "chriscross", zodiac: "♋Cancer", orientation: "bisexual", password: "123465", email: "chris@gmail.com", gender: "Non-binary", preferred_date_ideas: "bouldering or something physically active",  about_me: "I'm Chris. I'm open to absolutely anything. I love new experiences and the opportunity to meet new people. I'd love to go on a blind date. I've never been on one before. Low expectations.", age: 30)
boulder.photo.attach(io: file_boulder, filename: 'boulder.jpg', content_type: 'image/jpg')
boulder.save!

file_tarzan = URI.open('https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/CF34FE43CA2F589A46B9E52EC16A92D2F9818885ED6D6CFBF22B8F217CEEC84E/scale?width=1920&aspectRatio=1.78&format=jpeg')
tarzan = User.new(nickname: "anajrum", zodiac: "♋Cancer", orientation: "bisexual", password: "123456", email: 'murjana@gmail.com', gender: "Female", preferred_date_ideas: "We stay in and I teach you how to use figma!", about_me: "Former Tv journalist who turned into tech companies( operations side) with a passion to get more technical and more into learning how to build great projects! Will you be my Tarzan?", age: 36)
tarzan.photo.attach(io: file_tarzan, filename: 'tarzan.jpg', content_type: 'image/jpg')
tarzan.save!

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

puts "Interests newd"
User.all.each do |user|
  3.times do
    UserInterest.create!(user: user, interest: Interest.all.sample)
  end
end
puts "User Interests newd"

puts "icebreakers new"

icebreakers = ['Given the choice of anyone in the world, whom would you want as a dinner guest?', 'Would you like to be famous? In what way?', 'Before making a telephone call, do you ever rehearse what you are going to say? Why?', 'What would constitute a perfect day for you?', 'When did you last sing to yourself? To someone else?', 'If you were able to live to the age of 90 and retain either the mind or body of a 30-year-old for the last 60 years of your life, which would you want?', 'Do you have a secret hunch about how you will die?', 'Name three things you and your partner appear to have in common.', 'For what in your life do you feel most grateful?', 'If you could change anything about the way you were raised, what would it be?', 'If you could wake up tomorrow having gained any one quality or ability, what would it be?', 'If a crystal ball could tell you the truth about yourself, your life, the future or anything else, what would you want to know?', 'Is there something that you have dreamed of doing for a long time? Why havent you done it?', 'What is the greatest accomplishment of your life?', 'What do you value most in a friendship?', 'What is your most treasured memory?', 'What is your most terrible memory?', 'If you knew that in one year you would die suddenly, would you change anything about the way you are now living? Why?', 'What does friendship mean to you?', 'What roles do love and affection play in your life?”, “Alternate sharing something you consider a positive characteristic of your partner. Share a total of five items.”, “How close and warm is your family? Do you feel your childhood was happier than most other peoples?', 'How do you feel about your relationship with your mother?', 'Complete this sentence: I wish I had someone with whom I could share ... ', 'If you were going to become a close friend with your partner, please share what would be important for him or her to know.', 'When did you last cry in front of another person? Or byy yourself?', "If you were to die this evening with no opportunity to communicate with anyone, what would you most regret not having told someone? Why have not you told them yet?", 'Your house, containing everything you own, catches fire. After saving your loved ones and pets, you have time to safely make a final dash to save any one item. What would it be? Why?']

icebreakers.each do |icebreaker|
  Icebreaker.create!(content: icebreaker)
end

puts "chatrooms created"
Chatroom.create!(user_a: forestman, user_b: schemas)
Chatroom.create!(user_a: forestman, user_b: botanest)
Chatroom.create!(user_a: forestman, user_b: pizza)
Chatroom.create!(user_a: forestman, user_b: tarzan)
Chatroom.create!(user_a: forestman, user_b: mr_right)
Chatroom.create!(user_a: forestman, user_b: kissy)
Chatroom.create!(user_a: forestman, user_b: boulder)
Chatroom.create!(user_a: tarzan, user_b: kissy)
Chatroom.create!(user_a: tarzan, user_b: pizza)
