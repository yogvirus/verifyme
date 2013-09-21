class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :co_applicant_businesses
  has_many :businesses
end
