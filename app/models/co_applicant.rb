class CoApplicant < ActiveRecord::Base
  attr_accessible :document_required,:address, :name,
                  :pincode_id, :customer_id, :status,
                  :agency_name, :application_ref_no,
                  :fh_code, :applicant_name, :landmark,:application_status,
                  :country_name, :country_state, :country_city

  has_one :co_applicant_work_detail
  has_one :co_applicant_verification
  belongs_to :customer
  has_one :co_applicant_business
  belongs_to :pincode
  belongs_to :tab
  has_one :co_applicant_servey

  has_many :co_applicant_documents
  accepts_nested_attributes_for :co_applicant_documents, :allow_destroy => true

 extend FriendlyId
 friendly_id :applicant_name, use: :slugged

 geocoded_by :full_address
 after_validation :geocode, :if => :address_changed?

 def full_address
  [address, country_city, country_state, country_name].compact.join(', ')
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
