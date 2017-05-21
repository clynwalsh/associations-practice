class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name, null: false
      t.string :address
      t.timestamps
    end

    add_index :libraries, :name
  end
end
