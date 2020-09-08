class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save 
      redirect_to root_path
      flash[:success] = "Post Created"
    else 
      redirect_to root_path
      flash[:error] = "Post Not Created"
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
      flash[:success] = "Post Updated"
    else
      redirect_to root_path 
      flash[:error] = "Post Not Updated"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to root_path
      flash[:success] = "Post Destroyed"
    else 
      redirect_to root_path
      flash[:error] = "Post Not Destroyed"
    end 
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
