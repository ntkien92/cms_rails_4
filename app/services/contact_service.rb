class ContactService

  def initialize
  end

  def new_contact
    Contact.new
  end

  def create_contact(params)
    Contact.create(permit_params(params))
  end

  private

    def permit_params(params)
      params.require(:contact).permit(Contact::PARAMS)
    end
end