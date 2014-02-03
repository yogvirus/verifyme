class OfficeAsset < ActiveRecord::Base
  validates_uniqueness_of :name
  attr_accessible :name
  has_and_belongs_to_many :customers
end
