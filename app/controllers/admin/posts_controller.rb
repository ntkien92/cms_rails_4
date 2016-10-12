class Admin::PostsController < AdminController
  before_action :load_service

  def index
    @q      = @service.condition(params)
    @posts  = @service.index(params[:page])
  end

  def new
    @post   = @service.new_post
  end

  def create
    @post = @service.create_post(params)
    if @post.valid?
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end

  def edit
    @post   = @service.find(params[:id])
  end

  def update
    @post = @service.update_post(params)
    if @post.valid?
      redirect_to admin_posts_path
    else
      render 'edit'
    end
  end

  def show
    @post = @service.show_post(params)
  end

  def destroy
    post = @service.destroy_post(params)
    redirect_to admin_posts_path
  end

  private

    def load_service
      current_user = User.first
      @service = Admin::PostService.new(current_user, params)
    end
end
