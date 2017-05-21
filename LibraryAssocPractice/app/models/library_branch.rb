# == Schema Information
#
# Table name: library_branches
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  address    :string
#  created_at :datetime
#  updated_at :datetime
#

class LibraryBranch < ActiveRecord::Base
  has_many :shelves,
    class_name: 'Shelf',
    foreign_key: :library_id

  has_many :books,
    through: :shelves,
    source: :books

  has_many :lendings,
    class_name: 'Lending',
    foreign_key: :library_id

  has_many :patrons,
    through: :lendings,
    source: :borrower

  has_many :lent_books,
    through: :lendings,
    source: :borrowed_book
end
