class AddCustomerIdToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :customer_id, :integer
  end
end
