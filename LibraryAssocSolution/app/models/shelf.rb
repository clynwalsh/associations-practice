# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  library_id :integer          not null
#  location   :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class Shelf < ActiveRecord::Base
  belongs_to :library,
    class_name: 'LibraryBranch',
    foreign_key: :library_id

  has_many :books,
    class_name: 'Book',
    foreign_key: :shelf_id
end
