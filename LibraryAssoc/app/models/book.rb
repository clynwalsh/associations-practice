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
end
