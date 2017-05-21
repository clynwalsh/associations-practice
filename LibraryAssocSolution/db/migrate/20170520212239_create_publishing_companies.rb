class CreatePublishingCompanies < ActiveRecord::Migration
  def change
    create_table :publishing_companies do |t|
      t.string :name, null: false
      t.string :address
      t.timestamps
    end

    add_index :publishing_companies, :name
  end
end
