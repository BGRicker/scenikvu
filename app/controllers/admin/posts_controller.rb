class Admin::PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    Post.create(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :content, :category_ids => [])
  end

end
