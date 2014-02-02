class Branch < ActiveRecord::Base
  attr_accessible :branch_code, :contact_person, :name, :client_id
  has_one :customer
  belongs_to :client
end
