class CoApplicantBusiness < ActiveRecord::Base
attr_accessible :address, :agency_name, :applicant_name, :applicant_ref_no, :city, :co_applicant_id,
                :company_name, :country, :date_of_birth, :document_required, :fh_code, :landmark,
                :latitude, :longitude, :pincode_id, :slug, :state, :status
 belongs_to :co_applicant
 belongs_to :pincode
 has_one :co_applicant_verification
 has_one :client_verification
 has_one :co_applicant_work_detail

 extend FriendlyId
 friendly_id :applicant_name, use: :slugged

 geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

 def full_address
  [address, city, state, country].compact.join(', ')
 end

  include Workflow

workflow_column :status

  workflow do

    state :ready_for_verification do
      event :submit, :transitions_to => :submitted
    end

    state :submitted do
      event :progress, :transitions_to => :awaiting_to_get_verified
    end

    state :awaiting_to_get_verified do
      event :accept, :transitions_to => :verified
    end
     
    state :verified do
      event :re_indicated, :transitions_to => :ready_for_verification
      event :submitted, :transitions_to => :verified_with_changes
    end

  end






end
