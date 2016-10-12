class PostsController < ApplicationController
  def index
  end

  def show
    @post = Post.friendly.find(params[:id])
    @post.update(number_view: @post.number_view.to_i + 1)
  end
end
