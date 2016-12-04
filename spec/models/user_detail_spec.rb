# == Schema Information
#
# Table name: user_details
#
#  id           :integer          not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :string
#  address      :string
#  sex          :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe UserDetail, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
