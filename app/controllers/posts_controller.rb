class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @posts = @user.posts.order(id: :asc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    respond_to do |format|
      format.html do
        @post = Post.new post_params
        if @post.valid?
          @post.save
          redirect_to user_posts_path(current_user)
        else
          render :new, locals: { user: current_user, post: Post.new }
        end
      end
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
