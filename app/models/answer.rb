class Answer < ApplicationRecord
  belongs_to :user

  # validations
  validates_presence_of :answer_many
end
