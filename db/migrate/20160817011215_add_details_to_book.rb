class AddDetailsToBook < ActiveRecord::Migration
  def change

  	add_column :books, :isbn, :integer
  	add_column :books, :price, :decimal
  	add_column :books, :category_id, :integer


  end
end
