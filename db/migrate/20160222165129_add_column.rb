class AddColumn < ActiveRecord::Migration
  def change
  	add_column :descriptions, :created_at, :datetime
  	add_column :descriptions, :updated_at, :datetime
  end
end
