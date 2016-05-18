class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :date_post
      t.integer :number_view

      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.timestamps null: false
    end
  end
end
