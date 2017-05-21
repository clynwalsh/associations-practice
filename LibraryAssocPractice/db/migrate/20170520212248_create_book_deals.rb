class CreateBookDeals < ActiveRecord::Migration
  def change
    create_table :book_deals do |t|
      t.integer :author_id, null: false
      t.integer :publisher_id, null: false
      t.timestamps
    end

    add_index :book_deals, :author_id
    add_index :book_deals, :publisher_id
  end
end
