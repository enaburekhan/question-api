require 'rails_helper'

RSpec.describe Question, type: :model do
  # Association test
  it { should belong_to(:user) }

  it { should have_many(:answers).through(:user) }

  # Validation tests
  it { should validate_presence_of(:question_one) }
end
