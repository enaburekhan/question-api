class User < ApplicationRecord
  # belongs_to :question_id

  has_secure_password

  belongs_to :question
  has_many :answers

  def answers_order_recent
    answers.order(created_at: :desc).where(active: true).limit(100)
  end

  # validations
  validates_presence_of :username
  validates_presence_of :password
end
