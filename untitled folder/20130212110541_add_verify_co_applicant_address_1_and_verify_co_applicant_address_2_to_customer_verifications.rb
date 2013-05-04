class AddVerifyCoApplicantAddress1AndVerifyCoApplicantAddress2ToCustomerVerifications < ActiveRecord::Migration
  def change
    add_column :customer_verifications, :verify_co_applicant_address_1, :boolean
    add_column :customer_verifications, :verify_co_applicant_address_2, :boolean
  end
end
