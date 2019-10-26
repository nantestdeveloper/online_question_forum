class HomeController < ApplicationController
  before_action :authenticate_user!, :only => [:add_question,:new_question]
  def index
    @question = Question.all.order("created_at")
  end
  def new_question
  	question = Question.create(question_params)
  	flash[:sucess]="Question Added successfully."
  	redirect_to home_question_path
  end

  def update_question
  end

  def view_question
    @question =  Question.find_by(id:  params[:id])
  end
  
  def add_question
  end
  def question
     @question = Question.all.order("created_at")
  end
  private
    def question_params
      params.require(:question).permit(:title,:question_text,:user_id)
    end
end
