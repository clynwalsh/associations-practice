class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :text, null: false
      t.integer :book_id, null: false
      t.integer :reviewer_id, null: false
      t.timestamps
    end

    add_index :reviews, :book_id
    add_index :reviews, :reviewer_id
  end
end
