class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.page(params[:page]).per(5)
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def quiz_params
    params.require(:question).permit(:body)
  end
  
end
