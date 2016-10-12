class CategoryService
  def initialize(params)
    @category = Category.friendly.find(params[:id]) if params[:id].present?
  end

  def categories
    Category.all
  end

  def posts
    @category.posts.includes(:user)
  end
end