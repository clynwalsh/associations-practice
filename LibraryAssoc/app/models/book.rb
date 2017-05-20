# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  author_id  :integer          not null
#  shelf_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Book < ActiveRecord::Base
  belongs_to :author,
    class_name: 'Person',
    foreign_key: :author_id

  belongs_to :shelf,
    class_name: 'Shelf',
    foreign_key: :shelf_id

  has_one :library,
    through: :shelf,
    source: :library

  has_one :book_deal,
    class_name: 'BookDeal',
    foreign_key: :book_id

  has_one :publisher,
    through: :book_deal,
    source: :publisher

  has_many :lendings,
    class_name: 'Lending',
    foreign_key: :book_id

  has_many :borrowers,
    through: :lendings,
    source: :borrower

  has_many :reviews,
    class_name: 'Review',
    foreign_key: :book_id

  has_many :reviewers,
    through: :reviews,
    source: :reviewer
end
