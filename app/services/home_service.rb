class HomeService
  def initialize

  end

  def condition(params)
    @q = Post.ransack(params[:q])
  end

  def all_post(params)
    @q.result.order(id: :desc).page(params[:page]).per(Common::Flag::LIMIT_POST)
  end

  def recommend_post
    Post.first
  end

  def random_post
    Post.order("RANDOM()").limit(Common::Flag::LIMIT_POST)
  end

  def most_view_post
    Post.order(number_view: :desc).limit(Common::Flag::MOST_VIEW_POST)
  end

  def quotes
    Quote.order("RANDOM()").limit(Common::Flag::LIMIT_QUOTE)
  end
end