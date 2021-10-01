class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, through: :user

  # validations
  validates_presence_of :question_one
end
