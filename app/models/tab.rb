class Tab < ActiveRecord::Base
  attr_accessible :name, :tab_code, :pin_code, :pincode_id
  has_one :profile
  has_one :user
  belongs_to :pincode
  has_many :customer_verifications, :dependent => :destroy  
  has_many :co_applicants

end
