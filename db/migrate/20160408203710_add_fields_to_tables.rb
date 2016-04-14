class AddFieldsToTables < ActiveRecord::Migration
  def change
  	create_table :requests do |t|
		t.integer :book_id 
		t.integer :user_id
  	end
    add_index :requests, :user_id
	add_index :requests, :book_id
  end
end
