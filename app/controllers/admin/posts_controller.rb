class Admin::PostsController < AdminController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
    @category = Category.find_by_slug(params[:category_id])
    @category.posts.create(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :content)
  end

end
