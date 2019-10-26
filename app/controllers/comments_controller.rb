class CommentsController < ApplicationController
  before_action :authenticate_user!, :only => [:create]
  before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new(comment_params)
      question= Question.find_by(id:  params[:comment][:question_id])
      if @comment.save
        flash[:notice] = "Your comment was successfully posted!"
      else
        flash[:notice] = "Your comment wasn't posted!"
      end
      redirect_to view_question_path(question.id) 
    end

    private

    def comment_params
      params.require(:comment).permit(:body,:user_id)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Question.find_by_id(params[:question_id]) if params[:question_id]
    end
  end
