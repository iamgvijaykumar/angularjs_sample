class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :user_name
      t.integer :password
      t.integer :mobile_number
      t.boolean :Alive

      t.timestamps
    end
  end
end
