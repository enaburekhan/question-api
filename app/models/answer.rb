class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # @answer = Answer.first(100)
  # SELECT * FROM answers ORDER BY answers.id ASC LIMIT 100

  # validations
  validates_presence_of :answer_many
end
