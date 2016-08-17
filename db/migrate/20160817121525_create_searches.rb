class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keyword
      t.integer :category_id
      t.integer :age_ids

      t.timestamps null: false
    end
  end
end
