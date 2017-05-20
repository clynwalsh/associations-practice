# == Schema Information
#
# Table name: library_branches
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  address    :string
#  created_at :datetime
#  updated_at :datetime
#

class LibraryBranch < ActiveRecord::Base
end
