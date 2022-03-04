class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :chatrooms_as_user_a, class_name: "Chatroom", foreign_key: :user_a_id
  has_many :chatrooms_as_user_b, class_name: "Chatroom", foreign_key: :user_b_id
  has_many :messages
  has_many :answers_as_asker, class_name: "Answer", foreign_key: :asker_id
  has_many :answers_as_replier, class_name: "Answer", foreign_key: :replier_id
  has_one_attached :photo

  validates :password, :email, :age, :preferred_date_ideas, presence: true
  # validates :about_me, presence: true, length: { in: 30..200}

  validates :nickname, presence: true, uniqueness: true
  validates :orientation, presence: true, inclusion: { in: %w(heterosexual gay straight pansexual bisexual) }
  validates :gender, presence: true, inclusion: { in: ["male", "female", "non-binary", "prefer not to say"] }

  validates :nickname, presence: true, uniqueness: true
  validates :orientation, presence: true, inclusion: { in: %w(straight heterosexual gay bisexual pansexual) }
  validates :gender, presence: true, inclusion: { in: ["male", "female", "non-binary", "prefer not to say"] }
end
