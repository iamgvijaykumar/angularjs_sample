class CreateDescription < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :name
      t.string :description
      t.datetime :timestamps
    end
  end
end
