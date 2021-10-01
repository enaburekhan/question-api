require 'rails_helper'

RSpec.describe 'Questions', type: :request do
  before(:example) do
    @question = Question.create(question_one: 'Is a hot dog a sandwich? Why?')
  end

  it 'shows question' do
    get '/api/v1/questions'
    expect(response).to have_http_status(:ok)
  end

  it 'displays question information' do
    get "/api/v1/questions/#{@question.id}"
    expect(response).to have_http_status(:ok)
  end
end
