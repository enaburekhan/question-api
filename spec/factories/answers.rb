FactoryBot.define do
  factory :answer do
    answer_many { 'MyString' }
    user { nil }
    question { nil }
  end
end
