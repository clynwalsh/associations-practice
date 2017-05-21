class AddLibraryIdToLending < ActiveRecord::Migration
  def change
    add_column :lendings, :library_id, :integer
  end
end
