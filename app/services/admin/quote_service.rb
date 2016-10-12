class Admin::QuoteService
  def initialize
    
  end

  def condition(params)
    @q = Quote.ransack(params[:q])
  end

  def index(page)
    quotes = @q.result.page(page).order(id: :desc).per(10)
    quotes
  end

  def new_quote
    Quote.new
  end

  def find(id)
    Quote.find(id)
  end

  def update_quote(params)
    quote = find(params[:id])
    quote.update(permit_params(params))
    quote
  end

  def create_quote(params)
    Quote.create(permit_params(params))
  end

  def destroy_quote(params)
    quote = find(params[:id])
    quote.destroy
  end

  def show_quote(params)
    find(params[:id])
  end

  private
    def permit_params(params)
      params.require(:quote).permit(:author, :content)
    end
end