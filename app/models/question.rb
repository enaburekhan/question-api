class Question < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :answers, through: :users

  # validations
  validates_presence_of :question_one
end
