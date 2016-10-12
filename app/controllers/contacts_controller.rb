class ContactsController < ApplicationController
  before_action :load_service

  def index
    @contact      = @services.new_contact
  end

  def create
    @contact = @services.create_contact(params)
    if @contact.errors.present?
      render 'index'
    else
      flash[:success] = t('.success')
      redirect_to root_path
    end
  end

  private
    def load_service
      @services = ContactService.new
    end
end
