class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.string :show_menu

      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
