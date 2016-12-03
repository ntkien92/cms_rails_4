class CategoryController < ApplicationController
  before_action :load_service

  def index
    @categories = @service.categories
  end

  def show
    @posts = @service.posts.page(params[:page])
  end

  private
    def load_service
      @service = CategoryService.new(params)
    end
end
