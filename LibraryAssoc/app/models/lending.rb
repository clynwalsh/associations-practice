# == Schema Information
#
# Table name: lendings
#
#  id          :integer          not null, primary key
#  book_id     :integer          not null
#  borrower_id :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Lending < ActiveRecord::Base
end
