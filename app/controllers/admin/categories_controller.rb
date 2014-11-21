class Admin::CategoriesController < AdminController


  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    Category.create(category_params)
    redirect_to root_path
  end

  def current_category
    @current_category ||= Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :post_id)
  end

end
