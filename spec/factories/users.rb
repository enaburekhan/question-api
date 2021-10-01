FactoryBot.define do
  factory :user do
    username { 'MyString' }
    password_digest { 'MyString' }
    question_id { nil }
  end
end
