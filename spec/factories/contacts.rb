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

FactoryGirl.define do
  factory :contact do
    email     { FFaker::Internet.free_email }
    lastname  { FFaker::Name.last_name }
    firstname { FFaker::Name.first_name }
    description { FFaker::CheesyLingo.sentence }
    read      { FFaker::Boolean.random }
  end
end
