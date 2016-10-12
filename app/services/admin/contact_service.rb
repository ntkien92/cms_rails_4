class Admin::ContactService
  def initialize
    
  end

  def condition(params)
    @q = Contact.ransack(params[:q])
  end

  def index(page)
    contacts = @q.result.page(page).order(id: :desc).per(10)
    contacts
  end

  def find(id)
    Contact.find(id)
  end

  def show_contact(params)
    find(params[:id])
  end
end