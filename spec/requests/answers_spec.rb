require 'rails_helper'

RSpec.describe 'Answers', type: :request do
  before(:example) do
    @user = User.create(username: 'test_user', password: '1234')
    @answer = Answer.create(answer_many: 'the definition of sandwich is
    two or more slices of bread or a split
     roll having a filling in between', question_id: 1, user_id: 1)
    token = JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
    @headers = { Authorization: "Bearer #{token}" }
  end

  it 'shows all answers' do
    get '/api/v1/answers', headers: @headers
    expect(response).to have_http_status(:ok)
  end

  it 'displays answer information' do
    get "/api/v1/answers/#{@answer.id}", headers: @headers
    expect(response).to have_http_status(:ok)
  end
end