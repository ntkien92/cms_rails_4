class Admin::CategoriesController < AdminController
  before_action :load_service

  def index
    @q = @service.condition(params)
    @categories = @service.index(params[:page])
  end

  def new
    @category = @service.new_category
  end

  def create
    @category = @service.create_category(params)
    if @category.valid?
      redirect_to admin_categories_path
    else
      render 'new'
    end
  end

  def edit
    @category = @service.find(params[:id])
  end

  def update
    @category = @service.update_category(params)
    if @category.valid?
      redirect_to admin_categories_path
    else
      render 'edit'
    end
  end

  def destroy
    category = @service.destroy_category(params)
    redirect_to admin_categories_path
  end

  private

    def load_service
      current_user = User.first
      @service = Admin::CategoryService.new(current_user, params)
    end
end
