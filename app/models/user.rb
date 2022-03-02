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

  validates :password, :email, :age, :preferred_date_ideas, presence: true
  validates :name, presence: false
  validates :about_me, presence: true, length: { in: 30..100 }
  validates :nickname, presence: true, uniqueness: true
  validates :orientation, presence: true, inclusion: { in: %w(heterosexual homosexual bisexual) }
  validates :gender, presence: true, inclusion: { in: %w(male female binary) }
end
