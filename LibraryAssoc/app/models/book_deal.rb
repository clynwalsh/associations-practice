# == Schema Information
#
# Table name: book_deals
#
#  id           :integer          not null, primary key
#  author_id    :integer          not null
#  publisher_id :integer          not null
#  created_at   :datetime
#  updated_at   :datetime
#  book_id      :integer
#

class BookDeal < ActiveRecord::Base
  belongs_to :author,
    class_name: 'Person',
    foreign_key: :author_id

  belongs_to :publisher,
    class_name: 'PublishingCompany',
    foreign_key: :publisher_id

  belongs_to :book,
    class_name: 'Book',
    foreign_key: :book_id
end
