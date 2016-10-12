# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  show_menu  :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  PARAMS = [:name, :show_menu]

  has_many :posts

  belongs_to :user

  validates :name, :show_menu, presence: true
end
