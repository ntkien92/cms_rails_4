class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :sex

      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
