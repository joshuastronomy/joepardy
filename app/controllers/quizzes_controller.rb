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
    @questions = Question.find(params[:question_ids])
    @quiz.user_id = current_user.id
    @quiz.questions = @questions
    # @questions.each do |q|
    #   @quiz.questions << q
    # end
    puts @quiz.questions
    puts @quiz.user_id
    if @quiz.save
      redirect_to quizzes_path
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
      redirect_to '/quizzes'
    else
      render 'edit'
    end
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy!
    redirect_to quizzes_path
  end

  # def published_toggle
  #   @quiz.toggle!(:published)
  # end

  private

  def quiz_params
    params.permit(:question_ids => [])
  end

end
