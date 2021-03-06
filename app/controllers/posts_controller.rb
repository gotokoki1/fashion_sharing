class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    @post = Post.includes(:user)
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :explanation, :parchase, :clothes_price, :image).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
