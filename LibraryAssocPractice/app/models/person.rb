# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
  has_many :book_deals,
    class_name: 'BookDeal',
    foreign_key: :author_id

  has_many :publishers,
    through: :book_deals,
    source: :publisher

  has_many :authored_books,
    class_name: 'Book',
    foreign_key: :author_id

  has_many :borrowings,
    class_name: 'Lending',
    foreign_key: :borrower_id

  has_many :borrowed_books,
    through: :borrowings,
    source: :borrowed_book

  has_many :book_reviews,
    class_name: 'Review',
    foreign_key: :reviewer_id

  has_many :books_reviewed,
    through: :book_reviews,
    source: :reviewed_book

  has_many :reviews_of_authored_books,
    through: :authored_books,
    source: :reviews
end
