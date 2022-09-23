class LikesController < ApplicationController
  def create
    @like = Like.new like_params

    @like.save if @like.valid?
    redirect_to post_path @like.post
  end

  private

  def like_params
    { user: current_user, post_id: params.require(:post_id) }
  end
end
