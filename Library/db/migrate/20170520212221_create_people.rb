class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.timestamps
    end

    add_index :people, :name
  end
end
