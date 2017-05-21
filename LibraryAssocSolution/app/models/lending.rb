# == Schema Information
#
# Table name: lendings
#
#  id          :integer          not null, primary key
#  book_id     :integer          not null
#  borrower_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#  library_id  :integer
#

class Lending < ActiveRecord::Base
  belongs_to :borrowed_book,
    class_name: 'Book',
    foreign_key: :book_id

  belongs_to :borrower,
    class_name: 'Person',
    foreign_key: :borrower_id

  belongs_to :library,
    class_name: 'LibraryBranch',
    foreign_key: :library_id

end
