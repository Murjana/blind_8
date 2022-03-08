class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom, counter_cache: true

  validates :content, presence: true
end
