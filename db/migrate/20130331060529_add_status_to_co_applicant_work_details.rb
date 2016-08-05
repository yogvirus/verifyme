class AddStatusToCoApplicantWorkDetails < ActiveRecord::Migration
  def change
    add_column :co_applicant_work_details, :status, :string
  end
end
