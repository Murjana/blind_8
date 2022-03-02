class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :interests, through: :user_interests
  has_many :chatrooms_as_user_a, class_name: "Chatroom", foreign_key: :user_a_id
  has_many :chatrooms_as_user_b, class_name: "Chatroom", foreign_key: :user_b_id
  has_many :messages_as_user_a, through: :chatrooms, source: :messages
  has_many :messages_as_user_b, through: :chatrooms, source: :messages
  has_many :answers_as_asker, class_name: "Answer", foreign_key: :asker_id
  has_many :answers_as_replier, class_name: "Answer", foreign_key: :replier_id
end
