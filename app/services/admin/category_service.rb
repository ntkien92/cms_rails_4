class Admin::CategoryService
  def initialize(current_user, params)
    @current_user = current_user
  end

  def condition(params)
    @q = Category.ransack(params[:q])
  end

  def index(page)
    categories = @q.result.order(id: :desc).page(page).per(10)
  end

  def find(id)
    Category.friendly.find(id)
  end

  def new_category
    Category.new
  end

  def create_category(params)
    @current_user.categories.create(permit_params(params))
  end

  def update_category(params)
    category = find(params[:id])
    category.update(permit_params(params))
    category
  end

  def destroy_category(params)
    category = find(params[:id])
    category.destroy
  end

  private
    def permit_params(params)
      params.require(:category).permit(Category::PARAMS)
    end
end