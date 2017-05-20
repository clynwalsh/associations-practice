# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  text        :text             not null
#  book_id     :integer          not null
#  reviewer_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Review < ActiveRecord::Base
  belongs_to :reviewed_book,
    class_name: 'Book',
    foreign_key: :book_id

  belongs_to :reviewer,
    class_name: 'Person',
    foreign_key: :reviewer_id
end
