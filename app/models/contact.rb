# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  email       :string
#  lastname    :string
#  firstname   :string
#  description :text
#  read        :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Contact < ActiveRecord::Base
  PARAMS = [:email, :lastname, :firstname, :description]
end
