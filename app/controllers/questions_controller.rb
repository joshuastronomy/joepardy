class QuestionsController < ApplicationController
  def index
    @questions = Question.page(params[:page]).per(5)
    @quiz = Quiz.new
  end

  def show
    @question = Question.find(params[:id])
    @options = Option.where(question_id: @question.id)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy!
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:body, :quiz_ids => [])
  end

end
