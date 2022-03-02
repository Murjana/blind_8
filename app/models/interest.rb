class Interest < ApplicationRecord
  has_many :user_interests
  has_many :user, through: :user_interests
end
