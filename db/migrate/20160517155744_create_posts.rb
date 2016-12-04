class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :date_post
      t.integer :number_view
      t.string :url_image
      t.boolean :recommend
      t.boolean :public
      t.string  :description
      t.string :slug

      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.timestamps null: false
    end
  end
end
