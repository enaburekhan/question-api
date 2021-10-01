class User < ApplicationRecord
  # belongs_to :question_id
  
  has_secure_password

  has_one :question, dependent: :destroy
  has_many :answers, through: :question

  def answers_order_recent
    answers.order(created_at: :desc).where(active: true).limit(100)
  end

  # validations
  validates_presence_of :username
  validates_presence_of :password
end
