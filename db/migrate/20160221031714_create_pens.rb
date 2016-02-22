class CreatePens < ActiveRecord::Migration
  def change
    create_table :pens do |t|
    	t.string :first_name
		t.string :last_name
		t.string :age
		t.string :salary
		t.string :state
		t.string :country
		t.string :category
    end
  end
end
