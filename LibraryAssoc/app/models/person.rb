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
end
