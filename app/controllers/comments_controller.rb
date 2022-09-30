class CommentsController < ApplicationController
  def create
    # post = Post.find(params[:post_id])
    @comment = Comment.new comment_params
    # @comment.post = post
    # @comment.user = current_user
    @comment.save if @comment.valid?
    flash[:notice] = ['Comment Created Successfully']
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # flash[:notice] = ['Comment Deleted Successfully']
    redirect_to user_post_path(current_user, params[:post_id]), notice: 'Successfully removed the comment.'
    # respond_to do |format|
    #   format.html { redirect_to "/users/#{current_user.id}/posts/#{@post.id}" }
    #   format.json { head :no_content }
    # end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user: current_user, post_id: params.require(:post_id))
    # params.permit(:text)
  end
end
