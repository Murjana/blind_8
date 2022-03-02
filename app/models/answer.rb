class Answer < ApplicationRecord
  belongs_to :asker, class_name: "User"
  belongs_to :replier, class_name: "User"

  validates :content, presence: true
end
