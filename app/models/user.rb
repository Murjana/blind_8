class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :chatrooms_as_user_a, class_name: "Chatroom", foreign_key: :user_a_id, dependent: :destroy
  has_many :chatrooms_as_user_b, class_name: "Chatroom", foreign_key: :user_b_id, dependent: :destroy
  has_many :messages
  has_many :answers_as_asker, class_name: "Answer", foreign_key: :asker_id
  has_many :answers_as_replier, class_name: "Answer", foreign_key: :replier_id
  has_one_attached :photo


  validates :password, :email, :age, :preferred_date_ideas, presence: true
  validates :about_me, presence: true, length: { maximum: 3000,
    too_long: "%{count} characters is the maximum allowed" }





  validates :zodiac, presence: true
  # inclusion: { in: %w(♈Aries ♉Taurus ♊Gemini ♋Cancer ♌Leo ♍Virgo ♎Libra ♏Scorpio ♐Sagittarius ♑Capricornus ♒Aquarius ♓Pisces)}
  



  validates :nickname, presence: true, uniqueness: true
  validates :orientation, presence: true, inclusion: { in: %w(not-sharing straight gay lesbian bisexual allosexual androsexual asexual autosexual bicurious demisexual fluid graysexual gynesexual monosexual omnisexual pansexual polysexual queer questioning skoliosexual spectrasexual not-listed) }
  validates :gender, presence: true, inclusion: { in: ['Male', 'Female', 'Trans-Man', 'Trans-Woman', 'Non-binary', 'Non-conforming', 'Not-sharing'] }

end
