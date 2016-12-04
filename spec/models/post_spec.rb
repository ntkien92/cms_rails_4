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

require 'rails_helper'

RSpec.describe Post, type: :model do
end
