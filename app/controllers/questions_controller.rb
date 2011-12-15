class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def show
    @question = Question.find_by_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questions }
    end
  end
end
