class Department < ActiveRecord::Base
  validates_uniqueness_of :name
  attr_accessible :name
  has_many :co_applicant_businesses
  has_many :businesses
end
