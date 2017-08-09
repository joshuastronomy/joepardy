class OptionsController < ApplicationController



  def new
    @option = Option.new
  end

  def create
    @option = Option.new(option_params)
    @option.question = Question.find(params[:question_id])
    if @option.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def edit
    # @question = Question.find(params[:question_id])
    @option = Option.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    @option = Answer.find(params[:id])
    if @option.update(option_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:question_id])
    @option = Option.find(params[:id])
    @option.destroy!

    redirect_to @question
  end

private

def toggle_correct
  @option = answer.find(params[:id])
  @option.toggle!(:accepted)
end

def option_params
  params.require(:option).permit(:body)
end

end
