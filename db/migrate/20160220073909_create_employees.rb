class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :name
    	t.string :user_name
      	t.integer :password
      	t.integer :mobile_number
    end
  end
end
