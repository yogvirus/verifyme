class CoApplicantBusinessDocument < ActiveRecord::Base
  attr_accessible :co_applicant_business_id, :co_applicant_work_detail_id, :photo

  belongs_to :co_applicant_business
  belongs_to :co_applicant_work_detail

  has_attached_file :photo,
     :styles => {
     :thumb=> "400x400#",
     :small  => "800x600",
     :medium => "1024x768",
     :large => "1600x1200",
     :max => "2272x1704"}


end
