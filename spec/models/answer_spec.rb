require 'rails_helper'

RSpec.describe Answer, type: :model do
  # Association test
  it { should belong_to(:user) }

  # Validation test
  it { should validate_presence_of(:answer_many) }
end
