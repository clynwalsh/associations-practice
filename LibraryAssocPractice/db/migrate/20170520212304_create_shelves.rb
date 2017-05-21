class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.integer :library_id, null: false
      t.string :location, null: false
      t.timestamps
    end

    add_index :shelves, :library_id
  end
end
