class QuestionsController < ApplicationController
  def index
    @questions = Question.page(params[:page]).per(5)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(questionparams)
    @question.user = current_user
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(questionparams)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy!
    redirect_to question_path
  end

  private

  def questionparams
    params.require(:question).permit(:body)
  end

end
