require 'rails_helper'

RSpec.describe Question, type: :model do
  # Association test
  it { should have_many(:users).dependent(:destroy) }

  # it { should have_many(:answers).through(:users) }

  # Validation tests
  it { should validate_presence_of(:question_one) }
end