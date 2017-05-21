class AddBookIdToBookDeals < ActiveRecord::Migration
  def change
    add_column :book_deals, :book_id, :integer
  end
end
