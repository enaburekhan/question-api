class User < ApplicationRecord
  has_secure_password

  has_many :questions
  has_many :answers
  

  def answers_order_recent
    answers.order(created_at: :desc).where(active: true).limit(100)
  end

  # validations
  validates_presence_of :username
  validates_presence_of :password
end
