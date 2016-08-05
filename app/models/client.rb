class Client < ActiveRecord::Base
  attr_accessible :name
  has_many :customers
  validates_uniqueness_of :name
end
