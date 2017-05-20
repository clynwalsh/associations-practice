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
end
