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

class UserDetail < ActiveRecord::Base
  belongs_to :user
end
