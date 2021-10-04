class QuestionsController < ApplicationController
  before_action :find_question, only: [:show]
  def index
    @questions = Question.all
    render json: @questions
  end

  def show
    render json: @question
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end
end
