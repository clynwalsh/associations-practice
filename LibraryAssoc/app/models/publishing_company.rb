# == Schema Information
#
# Table name: publishing_companies
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  address    :string
#  created_at :datetime
#  updated_at :datetime
#

class PublishingCompany < ActiveRecord::Base
  has_many :book_deals,
    class_name: 'BookDeal',
    foreign_key: :publisher_id

  has_many :published_authors,
    through: :book_deals,
    source: :author

  has_many :published_books,
    through: :book_deals,
    source: :book
end
