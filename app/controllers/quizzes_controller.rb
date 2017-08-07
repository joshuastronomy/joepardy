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
    @quiz.user = current_user
    if @quiz.save
      redirect_to @quiz
    else
      render 'new'
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to @quiz
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy!
    redirect_to quiz_path
  end

  def published_toggle
    @quiz.toggle!(:published)
  end

  private

  def quiz_params
    params.require(:question).permit(:title, :body)
  end

end
