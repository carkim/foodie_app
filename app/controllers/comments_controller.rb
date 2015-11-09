class CommentsController < ApplicationController
  #before_filter :require_login, except: [:create]

  def create
    @comment = Comment.new(comment_params)
    @comment = current_user.comments.build(comment_params)
    @comment.restaurant_id = params[:restaurant_id]
      if @comment.save
        flash.notice = "New comment has been created!"
        redirect_to @comment.restaurant_id
      else
        render restaurant_path(@comment.restaurant_id)
      end
    end

  def comment_params
    params.require(:comment).permit(:user, :body)
  end


end
