class Admin::PostService
  def initialize(current_user, params)
    @current_user = current_user
  end

  def condition(params)
    @q = @current_user.posts.ransack(params[:q])
  end

  def index(page)
    posts = @q.result.includes(:category)
                     .order(id: :desc).page(page).per(10)
  end

  def find(id)
    @current_user.posts.friendly.find(id)
  end

  def update_post(params)
    post = find(params[:id])
    post.update(permit_params(params))
    post
  end

  def create_post(params)
    @current_user.posts.create(permit_params(params))
  end

  def destroy_post(params)
    post = find(params[:id])
    post.destroy
  end

  def new_post
    Post.new
  end

  def show_post(params)
    find(params[:id])
  end

  private
    def permit_params(params)
      params.require(:post).permit(Post::PARAMS)
    end
end