class PostsController < ApplicationController
  load_and_authorize_resource

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:user).where(user_id: params[:user_id]).references(:posts)
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments.includes(:user, :post)
  end

  def create
    respond_to do |format|
      format.html do
        @post = Post.new post_params
        if @post.valid?
          @post.save
          flash[:notice] = 'New Post Created Successfully'
          redirect_to user_posts_path(current_user)
        else
          render :new, locals: { user: current_user, post: Post.new }
        end
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = 'Post Deleted Successfully'
    # redirect_to user_path(@post.user), notice: "Successfully deleted the post #{@post.title}."

    respond_to do |format|
      format.html { redirect_to "/users/#{current_user.id}/posts" }
      format.json { head :no_content }
    end
  end

  def new
    render :new, locals: { user: current_user, post: Post.new }
  end

  private

  def post_params
    params.require(:post).permit(:title, :text).merge(user: current_user)
  end
end
