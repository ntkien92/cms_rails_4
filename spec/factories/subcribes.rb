# == Schema Information
#
# Table name: subcribes
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :subcribe do
    email 'MyString'
  end
end
