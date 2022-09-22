class PostsController < ApplicationController
  def index
    @user = User.find_by(id: params[:user_id])
    @posts = @user.posts.order(id: :desc)
  end

  def show
    @posts = Post.find(params[:id])
  end
end
