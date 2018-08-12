class AddTables < ActiveRecord::Migration[5.2]
  def change
  	create_table :items do |t|
  		t.string :name
  		t.string :type
  		t.string :size
  		t.integer :price
  		t.timestamps
  end
   create_table :orders do|t|
   	t.integer :user_id, references: :users
   	t.date :date
   	t.string :comments
   	t.float :sub_total
   	t.float :tax
   	t.float :discount
   	t.timestamps
   end
   create_table :order_items do |t|
   	t.integer :order_id, references: :orders
    t.integer :item_id, references: :items
    t.integer :quatity
    t.timestamps
end
end
end
