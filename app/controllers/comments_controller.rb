class CommentsController < ApplicationController
  def create
    @comment = Comment.new comment_params
    @comment.save if @comment.valid?
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user: current_user, post_id: params.require(:post_id))
  end
end
