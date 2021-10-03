require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  it { should have_many(:questions) }

  it { should have_many(:answers) }

  # Validation tests
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password) }
end
