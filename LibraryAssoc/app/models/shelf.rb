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
end
