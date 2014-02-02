class Pincode < ActiveRecord::Base
  attr_accessible :name, :pin_number
  has_many :tabs
  has_many :customers
  has_many :co_applicants
  has_many :co_applicant_business
  has_many :co_applicant_work_details
  has_many :work_serveys
  
  validates :name, uniqueness: { case_sensitive: false }
  
end
