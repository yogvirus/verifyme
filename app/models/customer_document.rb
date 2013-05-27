class CustomerDocument < ActiveRecord::Base
  belongs_to :servey
  belongs_to :customer
  
  attr_accessible :photo, :photo_name, :servey_id, :customer_id
  #validates_presence_of :customer_id, :photo, :photo_name

  mount_uploader :photo, PhotoUploader
 IMAGE_SIZES = {
    :thumb =>[400, 400],
    :small => [800, 600],
    :medium => [1024, 768],
    :large => [1600, 1200],
    :max => [2272, 1704]
  }

end
