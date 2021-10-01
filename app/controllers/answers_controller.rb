class AnswersController < ApplicationController
  before_action :authorize
  before_action :find_answer, only: %i[show update destroy]

  def index
    @answers = current_user.answers
    render json: @answers
  end

  def show
    render json: @answer
  end

  def create
    @answer = current_user.answers.build(answer_params)

    if @answer.save
      render json: @answer, status: :created
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  def update
    if @answer.update(answer_params)
      render json: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @answer.destroy
    render json: { message: 'Answer deleted' }, status: :ok
  end

  private

  def find_answer
    @answer = current_user.answers.find_by(id: params[:id])
    render json: { failure: "Answer doesn't exist." }, status: :not_found unless @answer
  end

  def answer_params
    params.permit(:answer_many, :question_id, :user_id)
  end
end
