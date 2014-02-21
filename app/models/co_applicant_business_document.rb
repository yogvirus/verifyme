class CoApplicantBusinessDocument < ActiveRecord::Base
  attr_accessible :co_applicant_business_id, :co_applicant_work_detail_id, :photo

  belongs_to :co_applicant_business
  belongs_to :co_applicant_work_detail

  has_attached_file :photo,
     :styles => {
       :media => "64x64",
       :thumb=> "100x100",
       :small  => "400x400" }


end
