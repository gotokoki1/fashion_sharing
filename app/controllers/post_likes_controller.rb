class PostLikesController < ApplicationController
  before_action :post_set, only: [:create, :destroy]
  def create
    like = current_user.post_likes.new(post_id: params[:post_id])
    if like.save
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    current_user.post_likes.find_by(post: @post).destroy
    respond_to do |format|
      format.js
    end
  end

private

  def post_set
    @post = Post.find(params[:post_id])
  end
end
