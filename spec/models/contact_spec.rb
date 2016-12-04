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

require 'rails_helper'

RSpec.describe Contact, type: :model do
end
