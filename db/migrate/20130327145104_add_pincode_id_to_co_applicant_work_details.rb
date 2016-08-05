class AddPincodeIdToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :pincode_id, :integer
  end
end
