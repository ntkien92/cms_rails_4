class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :show_menu

  def show_menu
    @q     = Post.ransack(params[:q])
    @menus = Category.where(show_menu: '1')
  end
end
