class CoApplicantDocument < ActiveRecord::Base
  attr_accessible :co_applicant_servey_id, :photo, :co_applicant_id
  belongs_to :co_applicant_servey

  has_attached_file :photo,
     :styles => {
       :media => "64x64",
       :thumb=> "100x100",
       :small  => "400x400" }

end
