class HomesController < ApplicationController
  before_action :load_service

  def index
    @q              = @service.condition(params)
    @posts          = @service.all_post(params)
    @post_recommend = @service.recommend_post
    @post_random    = @service.random_post
    @post_most_view = @service.most_view_post
    @quotes         = @service.quotes
  end

  private
    def load_service
      @service = HomeService.new
    end
end
