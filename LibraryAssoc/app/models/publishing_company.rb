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
end
