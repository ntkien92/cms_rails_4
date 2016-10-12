# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  content    :string
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :quote do
    content { FFaker::Lorem.sentence }
    author  { FFaker::Name.first_name }
  end
end
