class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|
      t.integer :book_id, null: false
      t.integer :borrower_id, null: false
      t.timestamps
    end

    add_index :lendings, :book_id
    add_index :lendings, :borrower_id
  end
end
