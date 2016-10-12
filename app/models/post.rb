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

class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  before_create :add_date_post

  PARAMS = [:title, :content, :description, :date_post, :url_image, :recommend, :public, :category_id]

  belongs_to :user
  belongs_to :category

  delegate :name, to: :category, prefix: true, allow_nil: true
  delegate :email, to: :user, prefix: true, allow_nil: true

  validates :title, :description, :content, :category_id, presence: true

  def add_date_post
    self.date_post = DateTime.current
  end
end
