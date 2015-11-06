class CommentsController < ApplicationController
  before_filter :require_login

  def create
    @comment = Comment.new(comment_params)
    @comment.restaurant_id = params[:restaurant_id]

    @comment.save

    redirect_to restaurant_path(@comment.restaurant)
  end

  def comment_params
    params.require(:comment).permit(:user, :body)
  end


end
