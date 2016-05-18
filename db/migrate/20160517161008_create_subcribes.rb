class CreateSubcribes < ActiveRecord::Migration
  def change
    create_table :subcribes do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
