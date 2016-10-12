class ContactParameter
  def self.convert_params(params)
    params.require(:contact).permit(Contact::PARAMS)
  end
end