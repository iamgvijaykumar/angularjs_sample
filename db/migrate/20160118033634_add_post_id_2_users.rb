class AddPostId2Users < ActiveRecord::Migration
  def change
  	add_column :users, :post_id, :string
  end
end
