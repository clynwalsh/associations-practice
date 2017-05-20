# == Schema Information
#
# Table name: book_deals
#
#  id           :integer          not null, primary key
#  author_id    :integer          not null
#  publisher_id :integer          not null
#  created_at   :datetime
#  updated_at   :datetime
#

class BookDeal < ActiveRecord::Base
end
