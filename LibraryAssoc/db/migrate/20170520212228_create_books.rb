class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :author_id, null: false
      t.integer :shelf_id
      t.timestamps
    end

    add_index :books, :title
    add_index :books, :author_id
    add_index :books, :shelf_id
  end
end
