class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :lastname
      t.string :firstname
      t.text :description
      t.boolean :read

      t.timestamps null: false
    end
  end
end
