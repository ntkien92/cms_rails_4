class Admin::ContactsController < AdminController
  before_action :load_service

  def index
    @q      = @service.condition(params)
    @contacts = @service.index(params[:page])
  end

  def show
    @contact = @service.show_contact(params)
  end

  private
    def load_service
      @service = Admin::ContactService.new
    end
end
