class AgesBooks < ActiveRecord::Migration
  def change
  	create_table :ages_books, :id => false do |t|
    t.integer :age_id
    t.integer :book_id
  end
  end
end
