# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  content     :text
#  date_post   :datetime
#  number_view :integer
#  url_image   :string
#  recommend   :boolean
#  public      :boolean
#  description :string
#  slug        :string
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :post do
    title       { FFaker::Lorem.sentence }
    content     { FFaker::Lorem.paragraphs }
    date_post   { Time.now }
    number_view { rand(1..1000) }
    description { FFaker::Lorem.sentence }
  end
end
