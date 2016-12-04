class Admin::QuotesController < AdminController
  before_action :load_service

  def index
    @q      = @service.condition(params)
    @quotes = @service.index(params[:page])
  end

  def new
    @quote = @service.new_quote
  end

  def create
    @quote = @service.create_quote(params)
    if @quote.valid?
      redirect_to admin_quotes_path
    else
      render 'new'
    end
  end

  def edit
    @quote   = @service.find(params[:id])
  end

  def update
    @quote = @service.update_quote(params)
    if @quote.valid?
      redirect_to admin_quotes_path
    else
      render 'edit'
    end
  end

  def show
    @quote = @service.show_quote(params)
  end

  def destroy
    quote = @service.destroy_quote(params)
    redirect_to admin_quotes_path
  end

  private
    def load_service
      @service = Admin::QuoteService.new
    end
end
