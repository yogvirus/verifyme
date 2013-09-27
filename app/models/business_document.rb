class BusinessDocument < ActiveRecord::Base
  attr_accessible :business_id, :work_servey_id , :photo
  belongs_to :business
  belongs_to :work_servey

  has_attached_file :photo,
     :styles => {
     :thumb=> "400x400",
     :small  => "800x600",
     :medium => "1024x768",
     :large => "1600x1200",
     :max => "2272x1704"}

end
